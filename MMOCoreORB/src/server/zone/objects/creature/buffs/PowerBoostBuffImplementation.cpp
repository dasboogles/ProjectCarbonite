/*
 * PowerboostBuffImplementation.cpp
 *
 *  Created on: 18/08/2010
 *      Author: polonel
 */

#include "PowerBoostBuffDurationEvent.h"
#include "server/zone/objects/creature/buffs/PowerBoostBuff.h"
#include "templates/params/creature/CreatureAttribute.h"

void PowerBoostBuffImplementation::initializeTransientMembers() {
	BuffImplementation::initializeTransientMembers();
}

void PowerBoostBuffImplementation::activate(bool applyModifiers) {
	if (creature.get() != nullptr) {
		Locker locker(creature.get());
		Locker lockerX(_this.getReferenceUnsafeStaticCast(), creature.get());
		// Come back to this if we see buggy behavior when a TKM is powerboosted AND incapped or dead.
		// if (creature.get()->isIncapacitated() || creature.get()->isDead()) {
		//	 // if the target is dead/incapped but the tick is happening before we de-active, then ignore the event
		//	 return;
		// }
		if (counter == 0) {
			mindBuffAmount = 0;
			haBuffAmount = 0;
			BuffImplementation::activate(false);
			creature.get()->addMaxHAM(CreatureAttribute::MIND, -(pbTick*10), true);
			mindBuffAmount =- (pbTick*10);
			// creature.get()->sendSystemMessage("Started PowerBoost with a counter of: " + String::valueOf(counter));
			creature.get()->sendSystemMessage("@teraskasi:powerboost_begin"); // [meditation] You focus your mental energies into your physical form.
			// DurationEvent to handle calling the deactivate() when the timer expires.
			counter++;
			Reference<PowerBoostBuffDurationEvent*> boostCheck = creature.get()->getPendingTask("powerBoostTick").castTo<PowerBoostBuffDurationEvent*>();
			if (boostCheck == nullptr) {
				pbBuffEvent = new PowerBoostBuffDurationEvent(creature.get(), _this.getReferenceUnsafeStaticCast());
				creature.get()->addPendingTask("powerBoostTick", pbBuffEvent, 3000);
			} else {
				return; // Shouldn't be here
			}

		} else if (counter <= 10) {
			// creature.get()->sendSystemMessage("PowerBoosting with a counter of: " + String::valueOf(counter));
			doHealthAndActionTick(true); // 1-20
			doMindTick(true);
			counter++;
			Reference<PowerBoostBuffDurationEvent*> boostCheck = creature.get()->getPendingTask("powerBoostTick").castTo<PowerBoostBuffDurationEvent*>();
			if (boostCheck != nullptr) {
				boostCheck->reschedule(3000);
			}
		} else if (counter > 10 && counter <= 20) {
			// creature.get()->sendSystemMessage("PowerBoosting with a counter of: " + String::valueOf(counter));
			doMindTick(true); // 20-40
			counter++;
			Reference<PowerBoostBuffDurationEvent*> boostCheck = creature.get()->getPendingTask("powerBoostTick").castTo<PowerBoostBuffDurationEvent*>();
			if (boostCheck != nullptr)
				boostCheck->reschedule(3000);
		} else if (counter == 51) { // Pretty sure anything past counter 51 is scuffed, but it's not important enough to fix!
			// creature.get()->sendSystemMessage("Coming down off of PowerBoost with a counter of: " + String::valueOf(counter));
			counter = 55; // increase counter to 45 (to tick Down)..
			Reference<PowerBoostBuffDurationEvent*> BoostCheck = creature.get()->getPendingTask("powerBoostTick").castTo<PowerBoostBuffDurationEvent*>();
			if (BoostCheck != nullptr)
				BoostCheck->reschedule(time - (183 * 1000)); // schedule for duration of the buff. (minus the tick time);
		} else if (counter >= 55 && counter < 65) {
			// creature.get()->sendSystemMessage("Ending PowerBoost with a counter of: " + String::valueOf(counter));
			doHealthAndActionTick(false);
			doMindTick(false);
			counter++;
			Reference<PowerBoostBuffDurationEvent*> boostCheck = creature.get()->getPendingTask("powerBoostTick").castTo<PowerBoostBuffDurationEvent*>();
			if (boostCheck != nullptr)
				boostCheck->reschedule(3000);
		}
	}
}

void PowerBoostBuffImplementation::deactivate(bool removeModifiers) {
	if (creature.get() != nullptr) {
		Locker locker(creature.get());
		Locker lockerX(_this.getReferenceUnsafeStaticCast(), creature.get());
		if (counter <= 41) {
			activate(false);
		} else if (counter >= 45 && counter < 65) {
			if (counter == 45)
				creature.get()->sendSystemMessage("@teraskasi:powerboost_wane"); // [meditation] You feel the effects of your mental focus begin to wane.
			activate(false);
		} else if (counter >= 65) {
			creature.get()->sendSystemMessage("@teraskasi:powerboost_end"); // [meditation] You feel the effects of mental focus come to an end.
			clearBuffEvent();
			BuffImplementation::deactivate(false);
		}
	}
}

void PowerBoostBuffImplementation::doHealthAndActionTick(bool up) {
	Locker locker(creature.get());
	Locker lockerX(_this.getReferenceUnsafeStaticCast(), creature.get());
	if (up) {
		creature.get()->addMaxHAM(CreatureAttribute::HEALTH, pbTick, true);
		creature.get()->addMaxHAM(CreatureAttribute::ACTION, pbTick, true);
		haBuffAmount += pbTick;
	} else {
		creature.get()->addMaxHAM(CreatureAttribute::HEALTH, -pbTick, true);
		creature.get()->addMaxHAM(CreatureAttribute::ACTION, -pbTick, true);
		haBuffAmount -= pbTick;
	}
}

void PowerBoostBuffImplementation::doMindTick(bool up) {
	Locker locker(creature.get());
	Locker lockerX(_this.getReferenceUnsafeStaticCast(), creature.get());
	if (up) {
		creature.get()->addMaxHAM(CreatureAttribute::MIND, pbTick, true);
		mindBuffAmount += pbTick;
	} else {
		creature.get()->addMaxHAM(CreatureAttribute::MIND, -pbTick, true);
		mindBuffAmount -= pbTick;
	}
}

void PowerBoostBuffImplementation::clearBuffEvent() {
	Locker locker(creature.get());
	Locker lockerX(_this.getReferenceUnsafeStaticCast(), creature.get());
	if (pbBuffEvent != nullptr) {
		creature.get()->removePendingTask("powerBoostTick");
	}
	counter = 65;
	creature.get()->addMaxHAM(CreatureAttribute::HEALTH, -haBuffAmount, true);
	creature.get()->addMaxHAM(CreatureAttribute::ACTION, -haBuffAmount, true);
	haBuffAmount = 0;
	creature.get()->addMaxHAM(CreatureAttribute::MIND, -mindBuffAmount, true);
	mindBuffAmount = 0;
	BuffImplementation::clearBuffEvent();
}
