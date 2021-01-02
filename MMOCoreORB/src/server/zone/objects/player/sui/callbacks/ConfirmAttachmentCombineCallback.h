/*
 * ConfirmAttachmentCombineCallback.h
 *
 *  Created on: 1/1/2021
 *      Author: boogles
 */

#ifndef CONFIRMATTACHMENTCOMBINECALLBACK_H_
#define CONFIRMATTACHMENTCOMBINECALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/loot/LootGroupMap.h"

class ConfirmAttachmentCombineCallback : public SuiCallback {
    ManagedWeakReference<Attachment*> attachmentObject;
	ManagedWeakReference<Attachment*> chosenAttachmentObject;
	Reference<const LootItemTemplate*> itemTemplateObject;
	int combinedValueObject;
	String attachmentNameObject;
public:
	ConfirmAttachmentCombineCallback(ZoneServer* serv, Attachment* attachment, Attachment* chosenAttachment, Reference<const LootItemTemplate*> itemTemplate, int combinedValue, String attachmentName) 
        : SuiCallback(serv) { // Need to pass server, attachment, chosenAttachment, attachmentTemplate, and combinedValue
        
        attachmentObject = attachment;
		chosenAttachmentObject = chosenAttachment;
		itemTemplateObject = itemTemplate;
		combinedValueObject = combinedValue;
		attachmentNameObject = attachmentName;

	}

	void run(CreatureObject* creature, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!sui->isMessageBox() || cancelPressed){
            return;
        }

        // Let's gooooo
        ManagedReference<Attachment*> attachment = attachmentObject;
		ManagedReference<Attachment*> chosenAttachment = chosenAttachmentObject;
		Reference<const LootItemTemplate*> itemTemplate = itemTemplateObject;
		int combinedValue = 0; 
		int combinationCost = 0;
		String attachmentName = "";
		combinedValue = combinedValueObject;
		attachmentName = attachmentNameObject;
		combinationCost = combinedValue * 2000; // 2000 credits per total points combined

		if (creature != nullptr) {
			if (attachment != nullptr && chosenAttachment != nullptr && combinedValue > 0 && attachmentName != "") {
				ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
				ManagedReference<SceneObject*> combinedSEA = NULL;
				ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
				// Redo
				// Cap combined mods at 25
				if (combinedValue > 25) {
					combinedValue = 25;
				}else if (combinedValue < 1){ // Make sure we can't go below 1! (just in case)
					combinedValue = 1;
				}

				// Call the SUI here
				
				// Do actual Combine here
				combinedSEA = lootManager->createLootAttachment(itemTemplate, attachmentName, combinedValue); 
				bool successfulCombination = false;
				if (combinedSEA != nullptr){
					Attachment* attachmentToMake = cast<Attachment*>(combinedSEA.get());

					if (attachmentToMake != NULL){
						Locker objLocker(attachmentToMake);
						if (inventory->transferObject(attachmentToMake, -1, true, true)) { //Transfer tape to player inventory
							inventory->broadcastObject(attachmentToMake, true);
							successfulCombination = true;
						} else {
							// Failed to put the new attachment into player's inventory, delete what would have been the new attachment from the DB!
							attachmentToMake->destroyObjectFromDatabase(true);
							creature->error("Unable to place Skill Attachment in player's inventory!");
							return;
						}
					}
				}

				// We were successful, so now we want to get rid of the old attachments we combined!
				// Get rid of combined attachments
				if (successfulCombination){
					attachment->destroyObjectFromWorld(true);
					attachment->destroyObjectFromDatabase(true);
					chosenAttachment->destroyObjectFromWorld(true);
					chosenAttachment->destroyObjectFromDatabase(true);
					creature->subtractBankCredits(combinationCost);
					creature->sendSystemMessage("++++++++++++++++++++");
					creature->sendSystemMessage("Successfully combined selected SEA with an equal or lesser SEA from your inventory!");
					creature->sendSystemMessage("The [Galactic Civil Authority] has removed " + String::valueOf(combinationCost) + " credits from your bank for this service.");
					creature->sendSystemMessage("++++++++++++++++++++");
				}
			} else {
				creature->sendSystemMessage("Something went wrong trying to combine your attachment with another!");
			}
		}
	}
};

#endif /* CONFIRMATTACHMENTCOMBINECALLBACK_H_ */
