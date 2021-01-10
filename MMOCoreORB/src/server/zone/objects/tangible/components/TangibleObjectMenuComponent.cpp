/*
 * TangibleObjectMenuComponent.cpp
 *
 *  Created on: 26/05/2011
 *      Author: victor
 */

#include "TangibleObjectMenuComponent.h"
#include "server/zone/objects/player/sessions/SlicingSession.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/loot/LootGroupMap.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/player/sui/callbacks/ConfirmAttachmentConvertCallback.h"
#include "server/zone/objects/player/sui/callbacks/ConfirmAttachmentCombineCallback.h"

void TangibleObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	ObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	uint32 gameObjectType = sceneObject->getGameObjectType();

	if (!sceneObject->isTangibleObject())
		return;

	TangibleObject* tano = cast<TangibleObject*>( sceneObject);

	// Figure out what the object is and if its able to be Sliced.
	if(tano->isSliceable() && !tano->isSecurityTerminal()) { // Check to see if the player has the correct skill level

		bool hasSkill = true;
		ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

		if ((gameObjectType == SceneObjectType::PLAYERLOOTCRATE) && !player->hasSkill("combat_smuggler_novice"))
			hasSkill = false;
		else if (sceneObject->isContainerObject())
			hasSkill = false; // Let the container handle our slice menu
		else if (sceneObject->isMissionTerminal() && !player->hasSkill("combat_smuggler_slicing_01"))
			hasSkill = false;
		else if (sceneObject->isWeaponObject() && (!inventory->hasObjectInContainer(sceneObject->getObjectID()) || !player->hasSkill("combat_smuggler_slicing_02")))
			hasSkill = false;
		else if (sceneObject->isArmorObject() && (!inventory->hasObjectInContainer(sceneObject->getObjectID()) || !player->hasSkill("combat_smuggler_slicing_03")))
			hasSkill = false;

		if(hasSkill)
			menuResponse->addRadialMenuItem(69, 3, "@slicing/slicing:slice"); // Slice
	}

	if(player->getPlayerObject() != nullptr && player->getPlayerObject()->isPrivileged()) {
		/// Viewing components used to craft item, for admins
		ManagedReference<SceneObject*> container = tano->getSlottedObject("crafted_components");
		if(container != nullptr) {

			if(container->getContainerObjectsSize() > 0) {

				SceneObject* satchel = container->getContainerObject(0);

				if(satchel != nullptr && satchel->getContainerObjectsSize() > 0) {
					menuResponse->addRadialMenuItem(79, 3, "@ui_radial:ship_manage_components"); // View Components
				}
			}
		}
	}

	WearableObject* wearable = cast<WearableObject*>(tano);

	// So long as we actually have a wearable to mess with...
	if (wearable != NULL) {
		// Only add radial menu item IF we actually have a tool in our inventory!
		if (player->hasSeaRemovalTool(player, false) ==  true){
			// If the interactable is a piece of clothing OR armor then...
			if (wearable->isWearableObject() || wearable->isArmorObject()){
				VectorMap<String, int>* mods = wearable->getWearableSkillMods();
					if (mods->size() > 0){
						menuResponse->addRadialMenuItem(89,3,"Extract Skill Mods");
					}
			}
		}
	}

	if (sceneObject->isAttachment()){
		menuResponse->addRadialMenuItem(99,3,"Combine Attachments");
		menuResponse->addRadialMenuItem(109,3,"Convert Attachment Type");
	}

	ManagedReference<SceneObject*> parent = tano->getParent().get();
	if (parent != nullptr && parent->getGameObjectType() == SceneObjectType::STATICLOOTCONTAINER) {
		menuResponse->addRadialMenuItem(10, 3, "@ui_radial:item_pickup"); //Pick up
	}
}

int TangibleObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	TangibleObject* tano = cast<TangibleObject*>( sceneObject);

	// player->sendSystemMessage("This item has a selectedID of: " + String::valueOf(selectedID));

	if (selectedID == 69 && player->hasSkill("combat_smuggler_novice") ) { // Slice [PlayerLootCrate]
		if (player->containsActiveSession(SessionFacadeType::SLICING)) {
			player->sendSystemMessage("@slicing/slicing:already_slicing");
			return 0;
		}

		//Create Session
		ManagedReference<SlicingSession*> session = new SlicingSession(player);
		session->initalizeSlicingMenu(player, tano);

		return 0;
	} 	else if (selectedID == 79) { // See components (admin)
			if(player->getPlayerObject() != nullptr && player->getPlayerObject()->isPrivileged()) {

				SceneObject* container = tano->getSlottedObject("crafted_components");
				if(container != nullptr) {

					if(container->getContainerObjectsSize() > 0) {

						SceneObject* satchel = container->getContainerObject(0);

						if(satchel != nullptr) {

							satchel->sendWithoutContainerObjectsTo(player);
							satchel->openContainerTo(player);

						} else {
							player->sendSystemMessage("There is no satchel this container");
						}
					} else {
						player->sendSystemMessage("There are no items in this container");
					}
				} else {
					player->sendSystemMessage("There is no component container in this object");
				}
			}

			return 0;
	} 	else if (selectedID == 89) { //Remove SEA Mods from wearable

			WearableObject* wearable = cast<WearableObject*>(tano);
			ManagedReference<SceneObject*> sea = NULL;
			bool convertedMods = false;

			ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
			if (wearable != nullptr && inventory != nullptr) { //safety Checks

				if (player->hasSeaRemovalTool(player, false) ==  false){ //They need the tool
					player->sendSystemMessage("This requires a specialzied skill enhancing attachment removal tool.");
					return 0;
				}

				if (wearable->isWearableObject() || wearable->isArmorObject()){
					if (wearable->isEquipped()){
					player->sendSystemMessage("You must first un-equip the item.");
					return 0;
					}
					VectorMap<String, int>* mods = wearable->getWearableSkillMods();
					if (mods->size() > 0){	//If the item has no mods we're done
						ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();		
						int i,j;
						LootGroupMap* lootGroupMap = LootGroupMap::instance();
						Reference<const LootItemTemplate*> itemTemplate = NULL;
						String objectTemplate = "";
						objectTemplate = sceneObject->getObjectTemplate()->getFullTemplateString();

						if (wearable->isArmorObject() || objectTemplate == "object/tangible/wearables/armor/padded/armor_padded_s01_belt.iff"  || objectTemplate == "object/tangible/wearables/armor/zam/armor_zam_wesell_belt.iff"){
							itemTemplate = lootGroupMap->getLootItemTemplate("attachment_armor");
						}
						else{
							itemTemplate = lootGroupMap->getLootItemTemplate("attachment_clothing");
						}
						if (lootGroupMap == NULL){
						error("Invalid loot template");
						return 0;
						}
						for (i=0;i<mods->size();i++){//Remove skill mods from item and create tapes

							String modKey = mods->elementAt(i).getKey();

							// Convert old lightsaber accuracy and speed tapes to new unified skillmod    *** REMOVE THIS SECTION IF YOU DON'T WANT THESE CONVERTED
							// if (modKey == "onehandedlightsaber_accuracy" || modKey == "twohandedlightsaber_accuracy" || modKey == "polearmlightsaber_accuracy") {
							// 	modKey = "lightsaber_accuracy";
							// 	convertedMods = true;
							// }
							// if (modKey == "onehandedlightsaber_speed" || modKey == "twohandedlightsaber_speed" || modKey == "polearmlightsaber_speed") {
							// 	modKey = "lightsaber_speed";
							// 	convertedMods = true;
							// }

							// Create a new SEA that is only 75% the power of the previous one.
							int modValue = mods->elementAt(i).getValue() * 0.75;

							// Prevent breaking an attachment
							if (modValue < 1){
								modValue = 1;
							}

							sea = lootManager->createLootAttachment(itemTemplate,modKey, modValue); 

							if (sea != nullptr){
								Attachment* attachment = cast<Attachment*>(sea.get());

								if (attachment != NULL){
									Locker objLocker(attachment);
									if (inventory->transferObject(sea, -1, true, true)) { //Transfer tape to player inventory
										inventory->broadcastObject(sea, true);
									} else {
										sea->destroyObjectFromDatabase(true);
										error("Unable to place Skill Attachment in player's inventory!");
										return false;
									}
								}
							}
						}

						//Destroy item now that tapes have been generated
						if (player->hasSeaRemovalTool(player,true) ==  true){
							player->sendSystemMessage("Successfully extracted skill attachments! Your SEA Tool was destroyed in the process.");
						}

						wearable->destroyObjectFromWorld(true);
						wearable->destroyObjectFromDatabase(true);

						// if (convertedMods){
						// 	player->sendSystemMessage("Old skill mods were converted to new skill mods.");
						// }
					}	
				}
			}

			return 0;
	}	
	else if (selectedID == 99) { // Combine lesser or equal Attachments together
			Attachment* attachment = cast<Attachment*>(sceneObject);
			
			if (attachment != NULL){
				Locker currentAttachmentLocker(attachment);
				HashTable<String, int>* attachmentMods = attachment->getSkillMods();
				LootGroupMap* lootGroupMap = LootGroupMap::instance();
				Reference<const LootItemTemplate*> itemTemplate = NULL;

				if (attachment->isArmorAttachment()){
					itemTemplate = lootGroupMap->getLootItemTemplate("attachment_armor");
				}
				else if (attachment->isClothingAttachment()){
					itemTemplate = lootGroupMap->getLootItemTemplate("attachment_clothing");
				}

				// So long as our attachment has 1 mod then we continue to try and combine
				if (attachmentMods->size() > 0) {
					HashTableIterator<String, int> iterator = attachmentMods->iterator();
					String statName = "";
					String attachmentName = "";
					int statValue = 0;
					int attachmentValue = 0;

					// Find highest value mod on the attachment to use for combinating
					for (int x=0; x < attachmentMods->size(); x++){
						iterator.getNextKeyAndValue(statName, statValue);
						if (statValue > attachmentValue){
							attachmentName = statName; 
							attachmentValue = statValue;
						}
					}

					Attachment* chosenAttachment = nullptr;
					int chosenAttachmentValue = 0;

					// We do not want to try to combine if the value is already 25!
					if (attachmentValue > 24){
						player->sendSystemMessage("The chosen Attachment is already the highest it can go!");
					} else {
						ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

						// Check player inventory for compatible attachments
						for (int i = 0; i < inventory->getContainerObjectsSize(); ++i) {
							ManagedReference<SceneObject*> sceno = inventory->getContainerObject(i);
							if (sceno != nullptr && sceno->isAttachment()){

								// Prevent looking at the same attachment as a possible combination choice
								if (attachment->getObjectID() != sceno->getObjectID()){
									Reference<const LootItemTemplate*> checkedItemTemplate = NULL;
									Attachment* attachmentToCheck = cast<Attachment*>(sceno.get());
									if (attachmentToCheck->isArmorAttachment()){
										checkedItemTemplate = lootGroupMap->getLootItemTemplate("attachment_armor");
									}
									else if (attachmentToCheck->isClothingAttachment()){
										checkedItemTemplate = lootGroupMap->getLootItemTemplate("attachment_clothing");
									}

									// Check to make sure the Attachments we're looping through are of the same Type as our chosen Attachment!
									if (itemTemplate == checkedItemTemplate){
										// Check attachment for compatibility
										if (attachmentToCheck != NULL){
											Locker objLocker2(attachmentToCheck);
											HashTable<String, int>* attachmentToCheckMods = attachmentToCheck->getSkillMods();
											HashTableIterator<String, int> attachmentToCheckiterator = attachmentToCheckMods->iterator();
											String iterAttachName = "";
											String attachmentToUseName = "";
											int iterAttachValue = 0;
											int attachmentToUseValue = 0;
											// Make sure the possible attachment has at LEAST 1 mod
											if (attachmentToCheckMods->size() > 0){
												// Find highest value mod on the attachment to use for combinating
												for (int x=0; x < attachmentToCheckMods->size(); x++){
													attachmentToCheckiterator.getNextKeyAndValue(iterAttachName, iterAttachValue);
													if (iterAttachValue > attachmentToUseValue){
														attachmentToUseName = iterAttachName; 
														attachmentToUseValue = iterAttachValue;
													}
												}
											}
											// If we find the same type of tape then we want to find the lowest skill value tape in the inventory to combine with!
											if (attachmentName == attachmentToUseName){
												// If we have no currently chosen attachment to begin with, set it to the current one for later comparison
												if (chosenAttachment == nullptr){
													// Make sure we don't allow combining with greater than tapes, only less than or equal to!
													if (attachmentToUseValue <= attachmentValue){
														chosenAttachment = attachmentToCheck;
														chosenAttachmentValue = attachmentToUseValue;
													}
												}
												// If an attachment of the same type is in player's inventory with a smaller value, use that
												else if (attachmentToUseValue < chosenAttachmentValue){
													chosenAttachment = attachmentToCheck;
													chosenAttachmentValue = attachmentToUseValue;
												}
											}
										}
									}
								}
							}
						} // Done checking inventory for chosenAttachment

						// Make sure the attachment we've picked isn't a bad actor
						if (chosenAttachment != nullptr) {
							Locker locker(chosenAttachment);

							int combinedValue = 0;
							combinedValue = attachmentValue + chosenAttachmentValue;
							int combinationCost = 0;
							combinationCost = combinedValue * 2000; // 2000 credits per total points combined
							
							// Make sure the player can afford to combine!
							if (player->getBankCredits() >= combinationCost) {
								//Send Confirmation to be sure we want to convert!
								ManagedReference<SuiMessageBox*> sui = new SuiMessageBox(player, 0x00);
								sui->setCallback(new ConfirmAttachmentCombineCallback(player->getZoneServer(), attachment, chosenAttachment, itemTemplate, combinedValue, attachmentName));
								sui->setPromptTitle("Combining Attachment");
								sui->setPromptText("You are about to combine two similar attachments for [" + String::valueOf(combinationCost) + "] credits. Are you sure?");
								sui->setCancelButton(true, "@cancel");
								sui->setOkButton(true, "@ui:ok");

								ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

								if (ghost != nullptr) {
									ghost->addSuiBox(sui);
									player->sendMessage(sui->generateMessage());
								}
							} else {
								player->sendSystemMessage("You must have " + String::valueOf(combinationCost) + " in your bank to combine the chosen Attachments!");
								warning("Player: " + player->getDisplayedName() + " has tried and failed to combine attachments due to a lack of credits!");
							}
						}

						// Return a helpful message if no viable tapes found in player's inventory for combinating!
						if (chosenAttachment == nullptr){
							player->sendSystemMessage("No viable tape found in your inventory. You must have another attachment of the same type and skill that is equal to or lesser in value!");
						}
					}
				}
			}

			// Finish up and return
			return 0;
	 }
	 else if (selectedID == 109) { // Convert Attachments from one type to another
		Attachment* attachment = cast<Attachment*>(sceneObject);
		
		if (attachment != NULL){
			// Get the value of our attachment
			HashTable<String, int>* attachmentMods = attachment->getSkillMods();
			HashTableIterator<String, int> iterator = attachmentMods->iterator();
			String statName = "";
			int statValue = 0;
			int attachmentValue = 0;
			int flipCost = 0;

			// Find highest value mod on the attachment
			for (int x=0; x < attachmentMods->size(); x++){
				iterator.getNextKeyAndValue(statName, statValue);
				if (statValue > attachmentValue){
					attachmentValue = statValue;
				}
			}

			// Calculate cost of attachment conversion
			flipCost = attachmentValue * 7500; // 7500 credits per point to convert

			//Send Confirmation to be sure we want to convert!
			ManagedReference<SuiMessageBox*> sui = new SuiMessageBox(player, 0x00);
			sui->setCallback(new ConfirmAttachmentConvertCallback(player->getZoneServer(), attachment));
			sui->setPromptTitle("Converting Attachment");
			sui->setPromptText("You are about to convert an attachment for [" + String::valueOf(flipCost) + "] credits. Are you sure?");
			sui->setCancelButton(true, "@cancel");
			sui->setOkButton(true, "@ui:ok");

			ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

			if (ghost != nullptr) {
				ghost->addSuiBox(sui);
				player->sendMessage(sui->generateMessage());
			}
		}

		// Finish up and return
		return 0;
	 } 
	 else{
		return ObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
	}

}

