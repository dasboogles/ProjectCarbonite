/*
 * ObjectMenuComponent.cpp
 *
 *  Created on: 26/05/2011
 *      Author: victor
 */

#include "ObjectMenuComponent.h"

#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "templates/SharedObjectTemplate.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/ZoneProcessServer.h"
#include "server/zone/Zone.h"

//Mindsoft Added for Object Color Customization
#include "templates/customization/AssetCustomizationManagerTemplate.h"
#include "server/zone/objects/player/sui/colorbox/SuiColorBox.h"
#include "server/zone/objects/player/sui/callbacks/ColorGogglesSuiCallback.h"

void ObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	//All objects in a cell can be picked up, if the player is on the structures permission list.
	//This opens the door to allow admins to be able to drop/pickup items in public structures
	if (sceneObject == NULL)
		return;

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	int adminLevelCheck = ghost->getAdminLevel();

	ManagedReference<SceneObject*> parent = sceneObject->getParent().get();
	ManagedReference<SceneObject*> playersParent = player->getParent().get();

	if (adminLevelCheck != 15) {
		if (parent == nullptr || !parent->isCellObject())
			return;

		ManagedReference<SceneObject*> obj = parent->getParent().get();

		if (obj == nullptr || !obj->isBuildingObject())
			return;

		ManagedReference<BuildingObject*> buio = cast<BuildingObject*>( obj.get());

		//Is this player on the permission list?
		if (!buio->isOnAdminList(player))
			return;
	}

	if (sceneObject->isPlayerCreature() || sceneObject->isPet())
		return;

	if (adminLevelCheck == 15 && playersParent == nullptr) {
		if (parent != nullptr){
			menuResponse->addRadialMenuItem(73, 3, "Admin Drop Outside");
		} else if (!sceneObject->isCreatureObject()){
			menuResponse->addRadialMenuItem(72, 3, "Admin Pickup Outside");
		}
	}
	

	if (parent == nullptr)
		return;

	// Don't show normal "Pickup" in player inventory or outside to Admin characters
	if (parent->isCellObject()){
		menuResponse->addRadialMenuItem(10, 3, "@ui_radial:item_pickup"); //Pick up

		menuResponse->addRadialMenuItem(51, 1, "@ui_radial:item_rotate"); //Rotate
		menuResponse->addRadialMenuItemToRadialID(51, 52, 3, "@ui_radial:item_rotate_left"); //Rotate Left
		menuResponse->addRadialMenuItemToRadialID(51, 53, 3, "@ui_radial:item_rotate_right"); //Rotate Right
		// menuResponse->addRadialMenuItemToRadialID(51, 210, 3, "Roll Right"); // Roll Left
		// menuResponse->addRadialMenuItemToRadialID(51, 211, 3, "Roll Left"); // Roll Right
		// menuResponse->addRadialMenuItemToRadialID(51, 212, 3, "Pitch Forward"); // Pitch Forward
		// menuResponse->addRadialMenuItemToRadialID(51, 213, 3, "Pitch Back"); // Pitch Back

		menuResponse->addRadialMenuItem(54, 1, "@ui_radial:item_move"); //Move
		menuResponse->addRadialMenuItemToRadialID(54, 55, 3, "@ui_radial:item_move_forward"); //Move Forward
		menuResponse->addRadialMenuItemToRadialID(54, 56, 3, "@ui_radial:item_move_back"); //Move Back
		menuResponse->addRadialMenuItemToRadialID(54, 57, 3, "@ui_radial:item_move_up"); //Move Up
		menuResponse->addRadialMenuItemToRadialID(54, 58, 3, "@ui_radial:item_move_down"); //Move Down
	}

	if ((sceneObject->getGameObjectType() == 0x200B)||(sceneObject->getGameObjectType() == 0x2005)||(sceneObject->getGameObjectType() == 0x200C)) {
		String appearanceFilename = sceneObject->getObjectTemplate()->getAppearanceFilename();
		VectorMap<String, Reference<CustomizationVariable*> > variables;
		AssetCustomizationManagerTemplate::instance()->getCustomizationVariables(appearanceFilename.hashCode(), variables, false);
		if (variables.contains("/private/index_color_0") || variables.contains("/private/index_color_1") || variables.contains("/private/index_color_2") || variables.contains("/private/index_color_3")){
			menuResponse->addRadialMenuItem(100, 1, "Change Color");
			if (variables.contains("/private/index_color_0")){
				menuResponse->addRadialMenuItemToRadialID(100, 81, 3, "Set Color 0");
			}
			if (variables.contains("/private/index_color_1")){
				menuResponse->addRadialMenuItemToRadialID(100, 82, 3, "Set Color 1");
			}
			if (variables.contains("/private/index_color_2")){
				menuResponse->addRadialMenuItemToRadialID(100, 83, 3, "Set Color 2");
			}
			if (variables.contains("/private/index_color_3")){
				menuResponse->addRadialMenuItemToRadialID(100, 84, 3, "Set Color 3");
			}
		}
	}
}


int ObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (selectedID > 80) {
		ManagedReference<SceneObject*> parent = sceneObject->getParent().get();

		if (parent == nullptr)
			return 0;

		if (parent->isPlayerCreature()) {
			return 0;
		}
	
		if (parent->isCellObject()) {
			ManagedReference<SceneObject*> obj = parent->getParent().get();

			if (obj != nullptr && obj->isBuildingObject()) {
				ManagedReference<BuildingObject*> buio = cast<BuildingObject*>(obj.get());

				if (!buio->isOnAdminList(player))
					return 0;
			}
		}

		if (selectedID < 85) { // is 81 - 84
			ZoneServer* server = player->getZoneServer();

			if (server != NULL) {		
				// The color index.
				String appearanceFilename = sceneObject->getObjectTemplate()->getAppearanceFilename();
				VectorMap<String, Reference<CustomizationVariable*> > variables;
				AssetCustomizationManagerTemplate::instance()->getCustomizationVariables(appearanceFilename.hashCode(), variables, false);

				// The Sui Box.
				ManagedReference<SuiColorBox*> cbox = new SuiColorBox(player, SuiWindowType::COLOR_ARMOR);
				cbox->setCallback(new ColorGogglesSuiCallback(server));

				String palStr = "";
				if (selectedID == 81){
					palStr = "/private/index_color_0";
				}else if(selectedID == 82){
					palStr = "/private/index_color_1";
				}else if (selectedID == 83){
					palStr = "/private/index_color_2";
				}else {
					palStr = "/private/index_color_3";
				}

				if (variables.contains(palStr)){
					cbox->setColorPalette(palStr);
					cbox->setForceCloseDistance(5.f);
					cbox->setUsingObject(sceneObject);

					// Add to player.
					ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
					ghost->addSuiBox(cbox);
					player->sendMessage(cbox->generateMessage());
				}else
					return 0;
			}
		}
		// } else {
		// 	switch (selectedID) {
		// 		case 210: // Roll Right
		// 		{
		// 			sceneObject->rotateXaxis(15);
		// 			sceneObject->teleport(sceneObject->getPositionX(), sceneObject->getPositionZ(), sceneObject->getPositionY(), sceneObject->getParent().get()->getObjectID());
		// 			break;
		// 		}
		// 		case 211: // Roll Left
		// 		{
		// 			sceneObject->rotateXaxis(-15);
		// 			sceneObject->teleport(sceneObject->getPositionX(), sceneObject->getPositionZ(), sceneObject->getPositionY(), sceneObject->getParent().get()->getObjectID());
		// 			break;
		// 		}
		// 		case 212: // Pitch left
		// 		{
		// 			sceneObject->rotateYaxis(15);
		// 			sceneObject->teleport(sceneObject->getPositionX(), sceneObject->getPositionZ(), sceneObject->getPositionY(), sceneObject->getParent().get()->getObjectID());
		// 			break;
		// 		}
		// 		case 213: // Pitch Down
		// 		{
		// 			sceneObject->rotateYaxis(-15);
		// 			sceneObject->teleport(sceneObject->getPositionX(), sceneObject->getPositionZ(), sceneObject->getPositionY(), sceneObject->getParent().get()->getObjectID());
		// 			break;
		// 		}
		// 	}
		// }
	} else {
		switch (selectedID) {
			case 10: //Pick Up
			{
				//String actionName = "transferitemmisc";
				//player->executeObjectControllerAction(actionName.hashCode(), getObjectID(), "");
				//transferitem
				break;
			}
			case 72: // Admin Pick Up
			{
				SceneObject* playerInventory = player->getSlottedObject("inventory");
				playerInventory->transferObject(sceneObject, -1, true);

				break;
			}
			case 73: // Admin Drop
			{
				Vector3 worldPosition = player->getWorldPosition();
				sceneObject->initializePosition(worldPosition.getX(), worldPosition.getZ(), worldPosition.getY());

				ManagedReference<Zone*> zone = player->getZone();
				zone->transferObject(sceneObject, -1, true);

				break;
			}
		}
	}
	return 0;
}