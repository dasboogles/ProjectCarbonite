/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef OVERCHARGESHOT2COMMAND_H_
#define OVERCHARGESHOT2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
// #include "server/zone/objects/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/BuffAttribute.h"
#include "server/zone/objects/creature/buffs/Buff.h"
#include "CombatQueueCommand.h"

class OverChargeShot2Command : public CombatQueueCommand {
public:

	OverChargeShot2Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		// -------------------------------------------------------------------------------------
		// Beginning of Stripping ForceRun from a target
		ManagedReference<WeaponObject*> weapon = creature->getWeapon();
		if (!weapon->isRangedWeapon()) {
			return INVALIDWEAPON;
		}

		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());

		if (creatureTarget == nullptr)
			return GENERALERROR;


		if (creature->getDistanceTo(object) > 62.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;
		}

		PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			return GENERALERROR;
		}

		// Make sure they can't spam!
		if (!creature->checkCooldownRecovery("used_overcharge_2")) {
			StringIdChatParameter stringId;

			const Time* cdTime = creature->getCooldownTime("used_overcharge_2");


			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

			stringId.setStringId("You must waiting....");
			stringId.setDI(timeLeft);
			creature->sendSystemMessage(stringId);
			return 0;
		}
		if (creature->isAttackableBy(creatureTarget) && creature->isInRange(creatureTarget, 62)) {
			creature->addCooldown("used_overcharge_2", 30 * 1000); // 30 second cooldown
		}else{
				return INVALIDTARGET;
		}

		// Don't strip Fr1
		// const bool hasFr1 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_1);
		const bool hasFr2 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_2);
		const bool hasFr3 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_3);

		if (hasFr2 || hasFr3) {
			// Let people know what's going on
			creature->sendSystemMessage(creatureTarget->getFirstName() + "'s Force Run has been disrupted by your attack!");
			creatureTarget->sendSystemMessage("Your Force Run has been disrupted by" + creature->getFirstName() + ".");

			Locker lock(creatureTarget);

			// if (hasFr1) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_1); }
			if (hasFr2) { 
				creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_2); 
			}
			else if (hasFr3) { 
				creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_3); 
			}

			// creature->addWounds(CreatureAttribute::QUICKNESS, 200, true);
		}
		// End of Stripping ForceRun from a target
		// -------------------------------------------------------------------------------------
		
		return doCombatAction(creature, target);
	}

};

#endif //OVERCHARGESHOT2COMMAND_H_
