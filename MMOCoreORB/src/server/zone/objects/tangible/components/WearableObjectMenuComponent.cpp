/*
 * WearableObjectMenuComponent.cpp
 *
 *  Created on: 10/30/2011
 *      Author: kyle
 */

#include "server/zone/objects/creature/CreatureObject.h"
#include "WearableObjectMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"

#include "server/zone/objects/building/BuildingObject.h"
#include "templates/customization/AssetCustomizationManagerTemplate.h"

void WearableObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	if (!sceneObject->isTangibleObject())
		return;

	TangibleObject* tano = cast<TangibleObject*>(sceneObject);
	if (tano == nullptr)
		return;

	if (tano->getConditionDamage() > 0 && tano->canRepair(player)) {
		menuResponse->addRadialMenuItem(70, 3, "@sui:repair"); // Slice
	}

	if (sceneObject->isWearableObject()){
        ManagedReference<SceneObject*> parent = sceneObject->getParent().get();
 
        if (parent != nullptr && parent->isCellObject()) {
            ManagedReference<SceneObject*> obj = parent->getParent().get();
 
            if (obj != nullptr && obj->isBuildingObject()) {
                ManagedReference<BuildingObject*> buio = cast<BuildingObject*>(obj.get());
 
                if (!buio->isOnAdminList(player))
                    return;
            }
        }
        else
        {
            if (!sceneObject->isASubChildOf(player))
                return;
        }
 
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

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int WearableObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isASubChildOf(player))
		return 0;

	if (selectedID == 70) {
		if(!sceneObject->isTangibleObject())
			return 0;

		TangibleObject* tano = cast<TangibleObject*>(sceneObject);
		if(tano == nullptr)
			return 0;

		tano->repair(player);

		return 1;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}
