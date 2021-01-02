/*
 * ConfirmAttachmentConvertCallback.h
 *
 *  Created on: 1/1/2021
 *      Author: boogles
 */

#ifndef CONFIRMATTACHMENTCONVERTCALLBACK_H_
#define CONFIRMATTACHMENTCONVERTCALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"

class ConfirmAttachmentConvertCallback : public SuiCallback {
    ManagedWeakReference<Attachment*> attachmentObject;
public:
	ConfirmAttachmentConvertCallback(ZoneServer* serv, Attachment* attachment) 
        : SuiCallback(serv) {
        
        attachmentObject = attachment;
	}

	void run(CreatureObject* creature, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!sui->isMessageBox() || cancelPressed){
            return;
        }

        // Let's gooooo
        ManagedReference<Attachment*> attachment = attachmentObject;

        if (attachment != nullptr){
			Locker currentAttachmentLocker(attachment);
            HashTable<String, int>* attachmentMods = attachment->getSkillMods();
            LootGroupMap* lootGroupMap = LootGroupMap::instance();
            Reference<const LootItemTemplate*> itemTemplate = NULL;

            // If one type then set our new attachment to be generated to the other type.
            if (attachment->isArmorAttachment()){
                creature->sendSystemMessage("Attachment is an AA");
                itemTemplate = lootGroupMap->getLootItemTemplate("attachment_clothing");
            }
            else if (attachment->isClothingAttachment()){
                creature->sendSystemMessage("Attachment is an CA");
                itemTemplate = lootGroupMap->getLootItemTemplate("attachment_armor");
            }

			// So long as our attachment has 1 mod then we continue to try and flip the attachment type
			if (attachmentMods->size() > 0) {
				HashTableIterator<String, int> iterator = attachmentMods->iterator();
				String statName = "";
				String attachmentName = "";
				int statValue = 0;
				int attachmentValue = 0;

				// Find highest value mod on the attachment to use for creating an opposite type of attachment from
				for (int x=0; x < attachmentMods->size(); x++){
					iterator.getNextKeyAndValue(statName, statValue);
					if (statValue > attachmentValue){
						attachmentName = statName; 
						attachmentValue = statValue;
					}
				}

				// Get player's inventory
				ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");

				// Make sure the attachment we've picked isn't a bad actor
				if (attachment != nullptr) {
					Locker locker(attachment);
					ManagedReference<SceneObject*> flippedSEA = NULL;
					ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
					int flipCost = 0;
					flipCost = attachmentValue * 7500; // 7500 credits per point to convert
					
					// Make sure the player can afford to combine!
					if (creature->getBankCredits() >= flipCost) {

						flippedSEA = lootManager->createLootAttachment(itemTemplate, attachmentName, attachmentValue); 
						bool successfulCombination = false;

						if (flippedSEA != nullptr){
							Attachment* attachmentToMake = cast<Attachment*>(flippedSEA.get());

							if (attachmentToMake != NULL){
								Locker objLocker(attachmentToMake);
								if (inventory->transferObject(attachmentToMake, -1, true, true)) { //Transfer tape to player inventory
									inventory->broadcastObject(attachmentToMake, true);
									successfulCombination = true;
								} else {
									attachmentToMake->destroyObjectFromDatabase(true);
									creature->error("Unable to place Skill Attachment in player's inventory!");
									return;
								}
							}
						}

						// Get rid of combined attachments
						if (successfulCombination){
							attachment->destroyObjectFromWorld(true);
							attachment->destroyObjectFromDatabase(true);
							creature->subtractBankCredits(flipCost);
							creature->sendSystemMessage("++++++++++++++++++++");
							creature->sendSystemMessage("Successfully converted the selected Attachment to the opposite type!");
							creature->sendSystemMessage("The [Galactic Civil Authority] has removed " + String::valueOf(flipCost) + " credits from your bank for this service.");
							creature->sendSystemMessage("++++++++++++++++++++");
						}
					} else {
						creature->sendSystemMessage("You must have " + String::valueOf(flipCost) + " in your bank to convert the chosen Attachment to another type!");
						creature->error("Player: " + creature->getDisplayedName() + " has tried and failed to convert an attachment due to a lack of credits!");
					}
				}
			}
		}
	}
};

#endif /* CONFIRMATTACHMENTCONVERTCALLBACK_H_ */
