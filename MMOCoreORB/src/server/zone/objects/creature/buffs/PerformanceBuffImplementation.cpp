/*
 * PerformanceBuffImplementation.cpp
 *
 *  Created on: 04/03/2011
 *      Author: Itac
 */

#include "server/zone/objects/creature/buffs/PerformanceBuff.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/buffs/PerformanceBuffType.h"

void PerformanceBuffImplementation::activate(bool applyModifiers) {

	if(type == PerformanceBuffType::DANCE_MIND) {
		// int mindStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::MIND));
		// setAttributeModifier(CreatureAttribute::MIND, mindStrength);
		// creature.get()->sendSystemMessage("@healing:performance_enhance_dance_mind_d");

		// Base bonus of 25% to credit gain from missions and credit drops
		float mindStrength = round((float)(strength * 25));
		creature.get()->sendSystemMessage("You have been Inspired by a Dancer to work harder for Credits with a +" + String::valueOf(mindStrength) + "% effectiveness");
		creature.get()->sendSystemMessage("You feel more Lucky +" + String::valueOf(mindStrength/5)); // Luck Bonus

		// Initialize our new buff
        ManagedReference<Buff*> buff = new Buff(creature.get(), buffCRC, buffDuration, BuffType::SKILL);

		// Buff Application
		Locker locker(buff);
        buff->setSkillModifier("dance_ent_buff", mindStrength);
		buff->setSkillModifier("force_luck", (mindStrength/5));
        creature.get()->addBuff(buff);
        locker.release();

		// ****The following are affected by this buff****
		// Increases Luck by +5 by default
		// Increases Credit Gain by +25% from missions and loot
	}
	else if(type == PerformanceBuffType::MUSIC_FOCUS) {
		// int focusStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::FOCUS));
		// setAttributeModifier(CreatureAttribute::FOCUS, focusStrength);
		// creature.get()->sendSystemMessage("@healing:performance_enhance_music_focus_d");

		// Base bonus of 10% Experimentation points, caps at 12.5%
		// Every 10 points is an extra experimentation point.
		float focusStrength = round((float)(strength * 10));
		creature.get()->sendSystemMessage("A Musician has given you the following boons:");
		creature.get()->sendSystemMessage("Your Experiments are " + String::valueOf(focusStrength) + "% more impressive.");
		creature.get()->sendSystemMessage("Your Experiences are " + String::valueOf((focusStrength*2)) + "% more clear to you.");

		// Initialize our new buff
        ManagedReference<Buff*> buff = new Buff(creature.get(), buffCRC, buffDuration, BuffType::SKILL);

		// Buff Application
		Locker locker(buff);
        buff->setSkillModifier("music_exp_buff", focusStrength); // Used for both experience gains in crafting and pve. Also affects crafting experimentation.
        creature.get()->addBuff(buff);
        locker.release();

		// ****The following are affected by this buff****
		// Increases Crafting Experimentation & Assembly
		// Increases Combat EXP Gains
		// Increases Crafting EXP Gains
		// Increases Entertainer EXP Gains
	}
	else if(type == PerformanceBuffType::MUSIC_WILLPOWER) {
		// int willStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::WILLPOWER));
		// setAttributeModifier(CreatureAttribute::WILLPOWER, willStrength);
		// creature.get()->sendSystemMessage("@healing:performance_enhance_music_willpower_d");

		float willStrength = round((float)(strength * 20));
		creature.get()->sendSystemMessage("You now receive more Faction for actions you take by " + String::valueOf(willStrength) + "%.");
		creature.get()->sendSystemMessage("Your Willpower has been galvanized. The flat quality of resources you craft with is increased by " + String::valueOf((willStrength/4)) + "%.");

		// Initialize our new buff
        ManagedReference<Buff*> buff = new Buff(creature.get(), buffCRC, buffDuration, BuffType::SKILL);

		// Buff Application
		Locker locker(buff);
        buff->setSkillModifier("music_will_buff", willStrength); // Helps with Faction Bonuses in PVE & PVP. Also increases resource quality by 5%
        creature.get()->addBuff(buff);
        locker.release();

		// ****The following are affected by this buff****
		// Faction Bonus for PVE and PVP (willStrength)
		// Increased Resource Quality (willStrength/4)
	}

	BuffImplementation::activate(true);

}

void PerformanceBuffImplementation::deactivate(bool removeModifiers) {
	BuffImplementation::deactivate(true);
}
