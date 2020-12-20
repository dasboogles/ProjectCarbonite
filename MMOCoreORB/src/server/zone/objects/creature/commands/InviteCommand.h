/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef INVITECOMMAND_H_
#define INVITECOMMAND_H_


#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/group/GroupManager.h"
#include "server/zone/ZoneServer.h"

class InviteCommand : public QueueCommand {
public:

	InviteCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		PlayerObject* playerObject = creature->getPlayerObject();
		bool godMode = false;

		if (playerObject)
		{
			if (playerObject->hasGodMode())
				godMode = true;
		}

		// creature->sendSystemMessage("Target is: " + String::valueOf(target));
		GroupManager* groupManager = GroupManager::instance();

		// Try to Invite by remote name
		if (target == 0){
			String targetName;
			try {
				UnicodeTokenizer args(arguments);
				args.getStringToken(targetName);
				if (targetName != "") {
					if (targetName.contains("\"")) {
						targetName = targetName.replaceAll("\"","");
					}
					ManagedReference<PlayerManager*> playerManager = server->getPlayerManager();
					CreatureObject* targetCreature = playerManager->getPlayer(targetName);

					if (targetCreature == nullptr) {
						creature->sendSystemMessage(targetName + " does not exist or is not online.");
						return INVALIDTARGET;
					}

					if (targetCreature->getZone() == nullptr) {
						creature->sendSystemMessage("You tried to invite a player that is not in a zone that is currently loaded.");
						return INVALIDTARGET;
					}

					if (creature == targetCreature) {
						creature->sendSystemMessage("You cannot invite yourself.");
						return INVALIDTARGET;
					}

					// Try to invite
					if (!targetCreature->getPlayerObject()->isIgnoring(creature->getFirstName().toLowerCase()) || godMode){
						groupManager->inviteToGroup(creature, targetCreature);
					}
				}

			} catch (Exception& e) {
				creature->sendSystemMessage("SYNTAX: /invite PlayerName");
				return INVALIDPARAMETERS;
			}
		} else { // Invite by Target
			ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

			if (object == nullptr)
				return GENERALERROR;


			if (object->isPlayerCreature()) {
				CreatureObject* player = cast<CreatureObject*>( object.get());

				if (!player->getPlayerObject()->isIgnoring(creature->getFirstName().toLowerCase()) || godMode){
					groupManager->inviteToGroup(creature, player);
				}
			}
		}

		return SUCCESS;
	}

};

#endif //INVITECOMMAND_H_

