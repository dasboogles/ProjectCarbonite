/*
 * LightsaberCrystalComponentImplementation.cpp
 *
 *      Author: Katherine
 */

#include "engine/engine.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/tangible/component/lightsaber/LightsaberCrystalComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/wearables/WearableContainerObject.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/sui/callbacks/LightsaberCrystalTuneSuiCallback.h"
#include "server/zone/objects/tangible/weapon/WeaponObject.h"
#include "server/zone/managers/stringid/StringIdManager.h"
#include "server/zone/managers/loot/CrystalData.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/ZoneServer.h"

void LightsaberCrystalComponentImplementation::initializeTransientMembers() {
	ComponentImplementation::initializeTransientMembers();

	setLoggingName("LightsaberCrystalComponent");
}

void LightsaberCrystalComponentImplementation::notifyLoadFromDatabase() {
	// Randomize item level and stats for existing crystals based on original quality value
	// TODO: Remove this on a server wipe when old variables are removed
	if (color == 31 && (minimumDamage != maximumDamage || itemLevel == 0)) {
		if (quality == POOR)
			itemLevel = 1 + System::random(38); // 1-39
		else if (quality == FAIR)
			itemLevel = 40 + System::random(29); // 40-69
		else if (quality == GOOD)
			itemLevel = 70 + System::random(29); // 70-99
		else if (quality == QUALITY)
			itemLevel = 100 + System::random(39); // 100-139
		else if (quality == SELECT)
			itemLevel = 140 + System::random(79); // 140-219
		else if (quality == PREMIUM)
			itemLevel = 220 + System::random(109); // 220-329
		else
			itemLevel = 330 + System::random(20);

		attackSpeed = 0.00;
		minimumDamage = 0;
		maximumDamage = 0;
		sacHealth = 0;
		sacAction = 0;
		sacMind = 0;
		woundChance = 0;
		forceCost = 0;
		floatForceCost = 0.00;

		generateCrystalStats();
	}

	TangibleObjectImplementation::notifyLoadFromDatabase();
}

void LightsaberCrystalComponentImplementation::generateCrystalStats() {
	ManagedReference<LootManager*> lootManager = getZoneServer()->getLootManager();

	if (lootManager == nullptr)
		return;

	const CrystalData* crystalData = lootManager->getCrystalData(getObjectTemplate()->getTemplateFileName());

	if (crystalData == nullptr) {
		error("Unable to find crystal stats for " + getObjectTemplate()->getTemplateFileName());
		return;
	}

	float qualityModifier = getQualityMod();

	int minStat = crystalData->getMinHitpoints();
	int maxStat = crystalData->getMaxHitpoints();

	// HAM of crystals
	if (rareMod == 1) {
		minStat *= 1.25;
		maxStat *= 1.25;
	} else if (rareMod == 2) {
		minStat *= 1.75;
		maxStat *= 1.75;
	} else if (rareMod == 3) {
		minStat *= 2.5;
		maxStat *= 2.5;
	}

	// Allow quality of crystal to affect minimums
	minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

	setMaxCondition(getRandomizedStat(minStat, maxStat, itemLevel));

	if (color == 31) {
		int minStat = crystalData->getMinDamage();
		int maxStat = crystalData->getMaxDamage();

		// DMG of crystals
		if (rareMod == 1) {
			minStat += 5;
			maxStat += 5;
		} else if (rareMod == 2) {
			minStat += 10;
			maxStat += 10;
		} else if (rareMod == 3) {
			minStat += 15;
			maxStat += 15;
		}

		// Allow quality of crystal to affect minimums
		minStat = qualityModifier * maxStat; // % of max since min can be 0 for a lot of stuff

		// warning("NormalRoll Crystal Quality possible: " + String::valueOf(getCrystalQuality()));
		// warning("NormalRoll Crystal qualMod possible: " + String::valueOf(qualityModifier));
		// warning("NormalRoll Crystal maxStat possible: " + String::valueOf(maxStat));
		// warning("NormalRoll Crystal minStat possible after Modifier: " + String::valueOf(minStat));

		damage = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinHealthSac();
		maxStat = crystalData->getMaxHealthSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff
		sacHealth = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinActionSac();
		maxStat = crystalData->getMaxActionSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff
		sacAction = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinMindSac();
		maxStat = crystalData->getMaxMindSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff
		sacMind = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinWoundChance();
		maxStat = crystalData->getMaxWoundChance();

		// WOUND of crystals
		if (rareMod == 1) {
			minStat += 2;
			maxStat += 2;
		} else if (rareMod == 2) {
			minStat += 4;
			maxStat += 4;
		} else if (rareMod == 3) {
			minStat += 6;
			maxStat += 6;
		}

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff
		woundChance = getRandomizedStat(minStat, maxStat, itemLevel);

		float minFloatStat = crystalData->getMinForceCost();
		float maxFloatStat = crystalData->getMaxForceCost();

		// FC of crystals
		if (rareMod == 1) {
			minFloatStat -= 0.5;
			maxFloatStat -= 0.5;
		} else if (rareMod == 2) {
			minFloatStat -= 1.0;
			maxFloatStat -= 1.0;
		} else if (rareMod == 3) {
			minFloatStat -= 1.5;
			maxFloatStat -= 1.5;
		}

		// Allow quality of crystal to affect minimums
		minFloatStat = (qualityModifier * maxFloatStat);
		floatForceCost = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);

		minFloatStat = crystalData->getMinAttackSpeed();
		maxFloatStat = crystalData->getMaxAttackSpeed();

		// AttackSpeed of crystals
		if (rareMod == 1) {
			minFloatStat -= 0.1;
			maxFloatStat -= 0.1;
		} else if (rareMod == 2) {
			minFloatStat -= 0.2;
			maxFloatStat -= 0.2;
		} else if (rareMod == 3) {
			minFloatStat -= 0.3;
			maxFloatStat -= 0.3;
		}

		// Allow quality of crystal to affect minimums
		minFloatStat = (qualityModifier * maxFloatStat);
		attackSpeed = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);
	} else if (color != 31) { // Setting Color Crystal stats pre-tune

		// Ancient Color Crystals always tune Yellow
		if (color > 11 && rareMod < 1) { // Make sure we don't overwrite what was naturally set
			int randomAncientRoll = System::random(100);

			// 20% chance for a Legendary Roll
			if (randomAncientRoll >= 80) {
				setRareMod(3); // Legendary
			} 
			// 30% chance for a Legendary Roll
			else if (randomAncientRoll >= 50) { 
				setRareMod(2); // Exceptional
			}
			// 50% chance for a Rare Roll
			else {
				setRareMod(1); // Rare
			}
		}

		// Color Crystal Damage
		if (rareMod != 0){
			int minStat = 0;
			int maxStat = 0;
			int minimumMod = 1;	
			if (rareMod == 1) { // Rolls between 1 -> 5
				int rngDmgMod = System::random(4) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 2) { // rolls between 5 -> 15
				minimumMod = 5;
				int rngDmgMod = System::random(10) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 3) { // rolls between 10 -> 25
				minimumMod = 10;
				int rngDmgMod = System::random(15) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			}
			damage = getRandomizedStat(minStat, maxStat, itemLevel);

			// WOUND of crystals
			// Reset mods for new roll
			minStat = 0;
			maxStat = 0;
			minimumMod = 1;
			if (rareMod == 1) { // Rolls between 1 -> 3
				int rngDmgMod = System::random(3) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 2) { // Rolls between 2 -> 5
				minimumMod = 2;
				int rngDmgMod = System::random(3) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 3) { // Rolls between 5 -> 9
				minimumMod = 5;
				int rngDmgMod = System::random(4) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			}
			woundChance = getRandomizedStat(minStat, maxStat, itemLevel);


			// FC of crystals
			float minFloatStat = 0.0;
			float maxFloatStat = -1.5;
			float minimumFloatMod = -0.1;
			if (rareMod == 1) { // Rolls between -0.1 -> -0.5
				float rngModVal = System::getMTRand()->rand(-0.4) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			} else if (rareMod == 2) { // Rolls between -0.5 -> -0.9
				minimumFloatMod = -0.5;
				float rngModVal = System::getMTRand()->rand(-0.4) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			} else if (rareMod == 3) { // Rolls between -0.9 -> -1.5
				minimumFloatMod = -0.9;
				float rngModVal = System::getMTRand()->rand(-0.6) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			}
			floatForceCost = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);
		} else {
			damage = getRandomizedStat(0, 0, itemLevel);
		}
	}

	quality = getCrystalQuality();
}

void LightsaberCrystalComponentImplementation::validateCrystalStats() {
	ManagedReference<LootManager*> lootManager = getZoneServer()->getLootManager();

	if (lootManager == nullptr)
		return;

	const CrystalData* crystalData = lootManager->getCrystalData(getObjectTemplate()->getTemplateFileName());

	if (crystalData == nullptr) {
		error("Unable to find crystal stats for " + getObjectTemplate()->getTemplateFileName());
		return;
	}

	float qualityModifier = getQualityMod();

	int minStat = crystalData->getMinHitpoints();
	int maxStat = crystalData->getMaxHitpoints();

	// HAM of crystals
	if (rareMod == 1) {
		minStat *= 1.25;
		maxStat *= 1.25;
	} else if (rareMod == 2) {
		minStat *= 1.75;
		maxStat *= 1.75;
	} else if (rareMod == 3) {
		minStat *= 2.5;
		maxStat *= 2.5;
	}

	if (getMaxCondition() > maxStat || getMaxCondition() < minStat)
		setMaxCondition(getRandomizedStat(minStat, maxStat, itemLevel));

	if (color == 31) {
		minStat = crystalData->getMinDamage();
		maxStat = crystalData->getMaxDamage();

		// DMG of crystals
		if (rareMod == 1) {
			minStat += 5;
			maxStat += 5;
		} else if (rareMod == 2) {
			minStat += 10;
			maxStat += 10;
		} else if (rareMod == 3) {
			minStat += 15;
			maxStat += 15;
		}

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

		// warning("Validating Crystal maxStat possible: " + String::valueOf(maxStat));
		// warning("Validating Crystal minStat possible after Modifier: " + String::valueOf(minStat));

		if (damage > maxStat || damage < minStat)
			damage = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinHealthSac();
		maxStat = crystalData->getMaxHealthSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

		if (sacHealth > maxStat || sacHealth < minStat)
			sacHealth = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinActionSac();
		maxStat = crystalData->getMaxActionSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

		if (sacAction > maxStat || sacAction < minStat)
			sacAction = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinMindSac();
		maxStat = crystalData->getMaxMindSac();

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

		if (sacMind > maxStat || sacMind < minStat)
			sacMind = getRandomizedStat(minStat, maxStat, itemLevel);

		minStat = crystalData->getMinWoundChance();
		maxStat = crystalData->getMaxWoundChance();

		// WOUND of crystals
		if (rareMod == 1) {
			minStat += 2;
			maxStat += 2;
		} else if (rareMod == 2) {
			minStat += 4;
			maxStat += 4;
		} else if (rareMod == 3) {
			minStat += 6;
			maxStat += 6;
		}

		// Allow quality of crystal to affect minimums
		minStat = (qualityModifier * maxStat); // % of max since min can be 0 for a lot of stuff

		if (woundChance > maxStat || woundChance < minStat)
			woundChance = getRandomizedStat(minStat, maxStat, itemLevel);

		float minFloatStat = crystalData->getMinForceCost();
		float maxFloatStat = crystalData->getMaxForceCost();

		// FC of crystals
		if (rareMod == 1) {
			minFloatStat -= 0.5;
			maxFloatStat -= 0.5;
		} else if (rareMod == 2) {
			minFloatStat -= 1.0;
			maxFloatStat -= 1.0;
		} else if (rareMod == 3) {
			minFloatStat -= 1.5;
			maxFloatStat -= 1.5;
		}

		// Allow quality of crystal to affect minimums
		minFloatStat = (qualityModifier * maxFloatStat);

		if (floatForceCost > maxFloatStat || floatForceCost < minFloatStat)
			floatForceCost = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);

		minFloatStat = crystalData->getMinAttackSpeed();
		maxFloatStat = crystalData->getMaxAttackSpeed();

		// AttackSpeed of crystals
		if (rareMod == 1) {
			minFloatStat -= 0.1;
			maxFloatStat -= 0.1;
		} else if (rareMod == 2) {
			minFloatStat -= 0.2;
			maxFloatStat -= 0.2;
		} else if (rareMod == 3) {
			minFloatStat -= 0.3;
			maxFloatStat -= 0.3;
		}

		// Allow quality of crystal to affect minimums
		minFloatStat = (qualityModifier * maxFloatStat);

		if (attackSpeed > maxFloatStat || attackSpeed < minFloatStat)
			attackSpeed = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);
	} else if (color != 31) { // Setting Color Crystal stats post-tune

		// Color Crystal Damage
		if (rareMod != 0){
			int minStat = 0;
			int maxStat = 25;
			int minimumMod = 1;	
			if (rareMod == 1) { // Rolls between 1 -> 5
				int rngDmgMod = System::random(4) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 2) { // Rolls between 5 -> 15
				minimumMod = 5;
				int rngDmgMod = System::random(10) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 3) { // Rolls between 10 -> 25
				minimumMod = 10;
				int rngDmgMod = System::random(15) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			}
			if (damage > maxStat || damage < minStat){
				damage = getRandomizedStat(minStat, maxStat, itemLevel);
			}

			// WOUND of crystals
			minStat = 0;
			maxStat = 6;
			minimumMod = 1;
			if (rareMod == 1) {
				int rngDmgMod = System::random(3) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 2) {
				minimumMod = 2;
				int rngDmgMod = System::random(3) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			} else if (rareMod == 3) {
				minimumMod = 5;
				int rngDmgMod = System::random(4) + minimumMod;
				minStat = rngDmgMod;
				maxStat = rngDmgMod;
			}
			if (woundChance > maxStat || woundChance < minStat){
				woundChance = getRandomizedStat(minStat, maxStat, itemLevel);
			}


			// FC of crystals
			float minFloatStat = 0.0;
			float maxFloatStat = -1.5;
			float minimumFloatMod = -0.1;
			if (rareMod == 1) { // Rolls between -0.1 -> -0.5
				float rngModVal = System::getMTRand()->rand(-0.4) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			} else if (rareMod == 2) { // Rolls between -0.5 -> -0.9
				minimumFloatMod = -0.5;
				float rngModVal = System::getMTRand()->rand(-0.4) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			} else if (rareMod == 3) { // Rolls between -0.9 -> -1.5
				minimumFloatMod = -0.9;
				float rngModVal = System::getMTRand()->rand(-0.6) + minimumFloatMod;
				minFloatStat = rngModVal;
				maxFloatStat = rngModVal;
			}
			if (floatForceCost > maxFloatStat || floatForceCost < minFloatStat){
				floatForceCost = Math::getPrecision(getRandomizedStat(minFloatStat, maxFloatStat, itemLevel), 2);
			}
		} else {
			damage = getRandomizedStat(0, 0, itemLevel);
		}
	}
}

int LightsaberCrystalComponentImplementation::getCrystalQuality() {
	if (itemLevel < 30)
		return POOR;
	else if (itemLevel < 50)
		return FAIR;
	else if (itemLevel < 70)
		return GOOD;
	else if (itemLevel < 100)
		return QUALITY;
	else if (itemLevel < 150)
		return SELECT;
	else if (itemLevel < 280)
		return PREMIUM;
	else
		return FLAWLESS;
}

int LightsaberCrystalComponentImplementation::getRandomizedStat(int min, int max, int itemLevel) {
	bool invertedValues = false;
	int invertedMin = min;
	int invertedMax = max;

	if (min > max) {
		int temp = min;
		min = max;
		max = temp;

		invertedValues = true;
	}

	// float avgLevel = (float)(itemLevel - 60) / 220.f;
	float avgLevel = (float)(itemLevel) / 220.f;

	float midLevel = min + ((max - min) * avgLevel);

	if (midLevel < min) {
		max += (midLevel - min);
		midLevel = min;
	}

	if (midLevel > max) {
		min += (midLevel - max);
		midLevel = max;
	}

	int randMin = min + System::random((int)(midLevel + 0.5f) - min);
	int randMax = (int)(midLevel + 0.5f) + System::random(max - midLevel);

	int result = randMin + System::random(randMax - randMin);

	if (invertedValues){
		if (itemLevel > 325){
			return invertedMax;
		}

		result = invertedMin + (invertedMax - result);
	}

	if (itemLevel > 325){
		return max;
	}

	return result;
}

float LightsaberCrystalComponentImplementation::getRandomizedStat(float min, float max, int itemLevel) {
	bool invertedValues = false;
	float invertedMin = min;
	float invertedMax = max;

	if (min > max) {
		float temp = min;
		min = max;
		max = temp;

		invertedValues = true;
	}

	// float avgLevel = (float)(itemLevel - 60) / 220.f;
	float avgLevel = (float)(itemLevel) / 220.f;

	float midLevel = min + ((max - min) * avgLevel);

	if (midLevel < min) {
		max += (midLevel - min);
		midLevel = min;
	}

	if (midLevel > max) {
		min += (midLevel - max);
		midLevel = max;
	}

	float randMin = System::getMTRand()->rand(midLevel - min) + min;
	float randMax = System::getMTRand()->rand(max - midLevel) + midLevel;

	float result = System::getMTRand()->rand(randMax - randMin) + randMin;

	// if (invertedValues)
	// 	result = invertedMin + (invertedMax - result);

	if (invertedValues){
		if (itemLevel > 325){
			return invertedMax;
		}

		result = invertedMin + (invertedMax - result);
	}

	if (itemLevel > 325){
		return max;
	}

	return result;
}

void LightsaberCrystalComponentImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	TangibleObjectImplementation::fillAttributeList(alm, object);

	PlayerObject* player = object->getPlayerObject();
	if (object->hasSkill("force_title_jedi_rank_01") || player->isPrivileged()) {
		if (ownerID == 0) {
			StringBuffer str;
			str << "\\#pcontrast2 UNTUNED";
			alm->insertAttribute("crystal_owner", str);
		} else {
			alm->insertAttribute("crystal_owner", ownerName);
		}

		if (getColor() != 31) {
			StringBuffer str3;
			str3 << "@jedi_spam:saber_color_" << getColor();
			alm->insertAttribute("color", str3);

			// Is tuned to someone OR is an admin so we can see pre-tune
			if (ownerID != 0 || player->isPrivileged()) {
				if (damage > 100 || damage < 0) {
					validateCrystalStats();
				} else if (damage > 0) { // Color crystals can't have 0 dmg if rare!
					alm->insertAttribute("mindamage", damage);
					alm->insertAttribute("maxdamage", damage);
					alm->insertAttribute("wpn_wound_chance", woundChance);
					alm->insertAttribute("forcecost", (float)getForceCost());
				}
			}
		} else {
			if (damage > 100 || damage < 0) {
				validateCrystalStats();
			}
			if (ownerID != 0 || player->isPrivileged()) {
				alm->insertAttribute("mindamage", damage);
				alm->insertAttribute("maxdamage", damage);
				alm->insertAttribute("wpn_attack_speed", attackSpeed);
				alm->insertAttribute("wpn_wound_chance", woundChance);
				alm->insertAttribute("wpn_attack_cost_health", sacHealth);
				alm->insertAttribute("wpn_attack_cost_action", sacAction);
				alm->insertAttribute("wpn_attack_cost_mind", sacMind);
				alm->insertAttribute("forcecost", (float)getForceCost());

				// For debugging
				if (player->isPrivileged()) {
					StringBuffer str;
					str << "@jedi_spam:crystal_quality_" << getQuality();
					alm->insertAttribute("challenge_level", itemLevel);
					alm->insertAttribute("crystal_quality", str);
				}
			} else {
				StringBuffer str;
				str << "@jedi_spam:crystal_quality_" << getQuality();
				alm->insertAttribute("crystal_quality", str);
			}
		}
	}
}

void LightsaberCrystalComponentImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	if (ownerID == 0 && player->hasSkill("force_title_jedi_rank_01") && hasPlayerAsParent(player)) {
		String text = "@jedi_spam:tune_crystal";
		menuResponse->addRadialMenuItem(128, 3, text);
	}

	PlayerObject* ghost = player->getPlayerObject();
	if (ghost != nullptr && ghost->isPrivileged()) {
		menuResponse->addRadialMenuItem(129, 3, "Staff Commands");

		if (getColor() == 31)
			menuResponse->addRadialMenuItemToRadialID(129, 130, 3, "Recalculate Stats");

		if (ownerID != 0)
			menuResponse->addRadialMenuItemToRadialID(129, 131, 3, "Untune Crystal");
	}

	ComponentImplementation::fillObjectMenuResponse(menuResponse, player);
}

int LightsaberCrystalComponentImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	if (selectedID == 128 && player->hasSkill("force_title_jedi_rank_01") && hasPlayerAsParent(player) && ownerID == 0) {
		ManagedReference<SuiMessageBox*> suiMessageBox = new SuiMessageBox(player, SuiWindowType::TUNE_CRYSTAL);

		suiMessageBox->setPromptTitle("@jedi_spam:confirm_tune_title");
		suiMessageBox->setPromptText("@jedi_spam:confirm_tune_prompt");
		suiMessageBox->setCancelButton(true, "Cancel");
		suiMessageBox->setUsingObject(_this.getReferenceUnsafeStaticCast());
		suiMessageBox->setCallback(new LightsaberCrystalTuneSuiCallback(player->getZoneServer()));

		player->getPlayerObject()->addSuiBox(suiMessageBox);
		player->sendMessage(suiMessageBox->generateMessage());
	}

	PlayerObject* ghost = player->getPlayerObject();
	if (ghost != nullptr && ghost->isPrivileged()){
		if (selectedID == 130 && getColor() == 31) {
			generateCrystalStats();
		} else if (selectedID == 131 && ownerID != 0) {
			ownerID = 0;

			String tuneName = StringIdManager::instance()->getStringId(objectName.getFullPath().hashCode()).toString();
			if (getCustomObjectName().toString().contains("(Exceptional)"))
				tuneName = tuneName + " (Exceptional)\\#.";
			else if (getCustomObjectName().toString().contains("(Legendary)"))
				tuneName = tuneName + " (Legendary)\\#.";
			else
				tuneName = tuneName + "\\#.";
		}
	}

	return 0;
}

bool LightsaberCrystalComponentImplementation::hasPlayerAsParent(CreatureObject* player) {
	ManagedReference<SceneObject*> wearableParent = getParentRecursively(SceneObjectType::WEARABLECONTAINER);
	SceneObject* inventory = player->getSlottedObject("inventory");
	SceneObject* bank = player->getSlottedObject("bank");

	// Check if crystal is inside a wearable container in bank or inventory
	if (wearableParent != nullptr) {
		ManagedReference<WearableContainerObject*> wearable = cast<WearableContainerObject*>(wearableParent.get());

		if (wearable != nullptr) {
			SceneObject* parentOfWearableParent = wearable->getParent().get();

			if (parentOfWearableParent == inventory || parentOfWearableParent == bank)
				return true;
		}
	} else {
		// Check if crystal is in inventory or bank
		SceneObject* thisParent = getParent().get();

		if (thisParent == inventory || thisParent == bank)
			return true;
	}
	return false;
}

void LightsaberCrystalComponentImplementation::tuneCrystal(CreatureObject* player) {
	if(!player->hasSkill("force_title_jedi_rank_01") || !hasPlayerAsParent(player)) {
		return;
	}

	if (getColor() == 31) {
		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

		if (ghost == nullptr)
			return;

		int tuningCost = 100 + (quality * 75);

		if (ghost->getForcePower() <= tuningCost) {
			player->sendSystemMessage("@jedi_spam:no_force_power");
			return;
		}

		ghost->setForcePower(ghost->getForcePower() - tuningCost);
	}

	if (ownerID == 0) {
		validateCrystalStats();

		ownerID = player->getObjectID();
		ownerName = player->getDisplayedName();

		// Color code is lime green.
		String tuneName = getCustomObjectName().toString() + " \\#00FF00(tuned)\\#.";

		setCustomObjectName(tuneName, true);
		player->notifyObservers(ObserverEventType::TUNEDCRYSTAL, _this.getReferenceUnsafeStaticCast(), 0);
		player->sendSystemMessage("@jedi_spam:crystal_tune_success");
	}
}

void LightsaberCrystalComponentImplementation::updateCrystal(int value){
	byte type = 0x02;
	setCustomizationVariable(type, value, true);
}

void LightsaberCrystalComponentImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	int colorMax = values->getMaxValue("color");
	int color = values->getCurrentValue("color");

	if (colorMax != 31) {
		int finalColor = Math::min(color, 61);
		setColor(finalColor);
		updateCrystal(finalColor);
	} else {
		setColor(31);
		updateCrystal(31);
	}

	generateCrystalStats();

	ComponentImplementation::updateCraftingValues(values, firstUpdate);
}

int LightsaberCrystalComponentImplementation::inflictDamage(TangibleObject* attacker, int damageType, float damage, bool destroy, bool notifyClient) {
	if (isDestroyed()) {
		return 0;
	}

	TangibleObjectImplementation::inflictDamage(attacker, damageType, damage, destroy, notifyClient);

	if (isDestroyed()) {
		ManagedReference<WeaponObject*> weapon = cast<WeaponObject*>(_this.getReferenceUnsafeStaticCast()->getParent().get()->getParent().get().get());

		if (weapon != nullptr) {
			if (getColor() == 31) {
				weapon->setAttackSpeed(weapon->getAttackSpeed() - getAttackSpeed());
				weapon->setMinDamage(weapon->getMinDamage() - getDamage());
				weapon->setMaxDamage(weapon->getMaxDamage() - getDamage());
				weapon->setHealthAttackCost(weapon->getHealthAttackCost() - getSacHealth());
				weapon->setActionAttackCost(weapon->getActionAttackCost() - getSacAction());
				weapon->setMindAttackCost(weapon->getMindAttackCost() - getSacMind());
				weapon->setWoundsRatio(weapon->getWoundsRatio() - getWoundChance());
				weapon->setForceCost(weapon->getForceCost() - getForceCost());
			}

			if (getColor() != 31) {
				weapon->setBladeColor(31);
				weapon->setCustomizationVariable("/private/index_color_blade", 31, true);
				weapon->setMinDamage(weapon->getMinDamage() - getDamage());
				weapon->setMaxDamage(weapon->getMaxDamage() - getDamage());
				weapon->setWoundsRatio(weapon->getWoundsRatio() - getWoundChance());
				weapon->setForceCost(weapon->getForceCost() - getForceCost());

				if (weapon->isEquipped()) {
					ManagedReference<CreatureObject*> parent = cast<CreatureObject*>(weapon->getParent().get().get());
					ManagedReference<SceneObject*> inventory = parent->getSlottedObject("inventory");
					inventory->transferObject(weapon, -1, true, true);
					parent->sendSystemMessage("@jedi_spam:lightsaber_no_color"); //That lightsaber can not be used until it has a color-modifying Force crystal installed.
				}
			}
		}
	}

	return 0;
}

int LightsaberCrystalComponentImplementation::generateColorCrystalStats(int itemLevel) {
	int result = 0;
	int minimumMod = 1;
	int min = 0;
	int max = 0;

	// Color Crystal Damage
	if (rareMod == 1) {
		int rngDmgMod = System::random(4) + minimumMod;
		min = rngDmgMod;
		max = rngDmgMod;
	} else if (rareMod == 2) {
		int rngDmgMod = System::random(14) + minimumMod;
		min = rngDmgMod;
		max = rngDmgMod;
	} else if (rareMod == 3) {
		int rngDmgMod = System::random(24) + minimumMod;
		min = rngDmgMod;
		max = rngDmgMod;
	}
	// Crystal Damage Returned
	result = getRandomizedStat(min, max, itemLevel);

	return result;
}

float LightsaberCrystalComponentImplementation::generateFloatColorCrystalStats(int itemLevel) {
	float result = 0.0;
	float minimumMod = 0.0;
	float min = 0.0;
	float max = 0.0;

	// FC of crystals
	if (rareMod == 1) {
		float rngModVal = System::getMTRand()->rand(0.4) + 0.1;
		min -= rngModVal;
		max -= rngModVal;
	} else if (rareMod == 2) {
		float rngModVal = System::getMTRand()->rand(0.9) + 0.1;
		min -= rngModVal;
		max -= rngModVal;
	} else if (rareMod == 3) {
		float rngModVal = System::getMTRand()->rand(1.4) + 0.1;
		min -= rngModVal;
		max -= rngModVal;
	}

	// Crystal Damage Returned
	result = getRandomizedStat(min, max, itemLevel);
	return result;
}

float LightsaberCrystalComponentImplementation::getQualityMod() {
	float qualModVal = 0.f;
	int currentQual = getCrystalQuality();

	if (currentQual == POOR){
		qualModVal = 0.5f;
	}
	else if (currentQual == FAIR) {
		qualModVal = 0.10f;
	}
	else if (currentQual == GOOD){
		qualModVal = 0.15f;
	}
	else if (currentQual == QUALITY) {
		qualModVal = 0.20f;
	}
	else if (currentQual == SELECT) {
		qualModVal = 0.25f;
	}
	else if (currentQual == PREMIUM) {
		qualModVal = 0.30f;
	}
	else if (currentQual == FLAWLESS) {
		qualModVal = 0.35f;
	}

	return qualModVal;
}
