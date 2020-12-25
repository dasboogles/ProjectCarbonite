/*
 * CreatureTemplate.cpp
 *
 *  Created on: 22/01/2012
 *      Author: victor
 */

#include "CreatureTemplate.h"
#include "server/zone/managers/creature/CreatureTemplateManager.h"

CreatureTemplate::CreatureTemplate() {
	conversationTemplate = 0;
	kinetic = 0;
	energy = 0;
	electricity = 0;
	stun = 0;
	blast = 0;
	heat = 0;
	cold = 0;
	acid = 0;
	lightSaber = 0;

	scale = 1.f;

	objectName = "";
	randomNameType = 0;
	randomNameTag = false;
	customName = "";
	planetMapCategory = 0;
	socialGroup = "";
	faction = "";
	level = 0;
	chanceHit = 0.f;
	damageMin = 0;
	damageMax = 0;
	specialDamageMult = 1.f;
	range = 0;
	baseXp = 0;
	baseHAM = 0;
	baseHAMmax = 0;
	armor = 0;
	meatType = "";
	meatAmount = 0;
	hideType = "";
	hideAmount = 0;
	boneType = "";
	boneAmount = 0;
	milkType = "";
	milk = 0.f;
	tamingChance = 0.f;
	ferocity = 0;
	aggroRadius = 0;
	pvpBitmask = 0;
	creatureBitmask = 0;
	diet = 0;
	optionsBitmask = 0;

	templates.removeAll();

	weapons.removeAll();

	attacks = new CreatureAttackMap();

	aiTemplate = "example";
	defaultWeapon = "";
	defaultAttack = "defaultattack";
	controlDeviceTemplate = "object/intangible/pet/pet_control.iff";
	containerComponentTemplate = "";
	reactionStf = "";
	personalityStf = "";
}

CreatureTemplate::~CreatureTemplate() {
	templates.removeAll();

	weapons.removeAll();

	delete attacks;
	attacks = nullptr;
}

void CreatureTemplate::readObject(LuaObject* templateData) {
	int harvestingBonus = 5;
	conversationTemplate = String(templateData->getStringField("conversationTemplate").trim()).hashCode();
	objectName = templateData->getStringField("objectName").trim();
	randomNameType = templateData->getIntField("randomNameType");
	randomNameTag = templateData->getBooleanField("randomNameTag");
	planetMapCategory = String(templateData->getStringField("planetMapCategory").trim()).hashCode();

	customName = templateData->getStringField("customName").trim();
	socialGroup = templateData->getStringField("socialGroup").trim();
	faction = templateData->getStringField("faction").trim().toLowerCase();
	level = templateData->getIntField("level");
	chanceHit = templateData->getFloatField("chanceHit");
	damageMin = templateData->getIntField("damageMin");
	damageMax = templateData->getIntField("damageMax");
	specialDamageMult = templateData->getFloatField("specialDamageMult");
	if (specialDamageMult < 0.001f) specialDamageMult = 1.f; // could use numeric_limit here, but this will prevent people from putting tiny modifiers in as well.
	baseXp = templateData->getIntField("baseXp");
	baseHAM = templateData->getIntField("baseHAM");
	baseHAMmax = templateData->getIntField("baseHAMmax");
	armor = templateData->getIntField("armor");

	// MEAT -- Harvesting Refactor
	meatType = templateData->getStringField("meatType").trim();
	if (templateData->getIntField("meatAmount") < 10) {
		meatAmount = (templateData->getIntField("meatAmount") * (harvestingBonus * 2));
	} else {
		meatAmount = (templateData->getIntField("meatAmount") * harvestingBonus);
	}

	// HIDE -- Harvesting Refactor
	hideType = templateData->getStringField("hideType").trim();
	if (templateData->getIntField("hideAmount") < 10) {
		hideAmount = (templateData->getIntField("hideAmount") * (harvestingBonus * 2));
	} else {
		hideAmount = (templateData->getIntField("hideAmount") * harvestingBonus);
	}

	// BONE -- Harvesting Refactor
	boneType = templateData->getStringField("boneType").trim();
	if (templateData->getIntField("boneAmount") < 10) {
		boneAmount = (templateData->getIntField("boneAmount") * harvestingBonus * 2);
	} else {
		boneAmount = (templateData->getIntField("boneAmount") * harvestingBonus);
	}

	// MILK -- Harvesting Refactor
	if (templateData->getIntField("milk") < 10) {
		milk = (templateData->getIntField("milk") * (harvestingBonus * 3));
	} else {
		milk = (templateData->getIntField("milk") * (harvestingBonus * 2));
	}

	tamingChance = templateData->getFloatField("tamingChance");
	ferocity = templateData->getIntField("ferocity");
	aggroRadius = templateData->getIntField("aggroRadius");
	pvpBitmask = templateData->getIntField("pvpBitmask");
	creatureBitmask = templateData->getIntField("creatureBitmask");
	diet = templateData->getIntField("diet");
	optionsBitmask = templateData->getIntField("optionsBitmask");
	patrolPathTemplate = templateData->getStringField("patrolPathTemplate");
	defaultWeapon = templateData->getStringField("defaultWeapon");

	if(!templateData->getStringField("defaultAttack").isEmpty())
		defaultAttack = templateData->getStringField("defaultAttack");

	scale = templateData->getFloatField("scale");

	if (!templateData->getStringField("milkType").isEmpty()) {
		milkType = templateData->getStringField("milkType").trim();
	}

	LuaObject res = templateData->getObjectField("resists");
	if (res.getTableSize() == 9) {
		float tempVal = 0.f;
		float maxResistPossible = 85;

		// Kinetic
		if (res.getFloatAt(1) > maxResistPossible) {
			if (res.getFloatAt(1) <= 100) {
				kinetic = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(1) - 100.f;
				if (tempVal < 0) {
					kinetic = 0;
				} else {
					if (tempVal > maxResistPossible) {
						kinetic = maxResistPossible;
					} else {
						kinetic = tempVal;
					}
				}
			}
		} else {
			kinetic = res.getFloatAt(1);
		}

		// Energy
		if (res.getFloatAt(2) > maxResistPossible) {
			if (res.getFloatAt(2) <= 100) {
				energy = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(2) - 100.f;
				if (tempVal < 0) {
					energy = 0;
				} else {
					if (tempVal > maxResistPossible) {
						energy = maxResistPossible;
					} else {
						energy = tempVal;
					}
				}
			}
		} else {
			energy = res.getFloatAt(2);
		}

		// Blast
		if (res.getFloatAt(3) > maxResistPossible) {
			if (res.getFloatAt(3) <= 100) {
				blast = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(3) - 100.f;
				if (tempVal < 0) {
					blast = 0;
				} else {
					if (tempVal > maxResistPossible) {
						blast = maxResistPossible;
					} else {
						blast = tempVal;
					}
				}
			}
		} else {
			blast = res.getFloatAt(3);
		}

		// Heat
		if (res.getFloatAt(4) > maxResistPossible) {
			if (res.getFloatAt(4) <= 100) {
				heat = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(4) - 100.f;
				if (tempVal < 0) {
					heat = 0;
				} else {
					if (tempVal > maxResistPossible) {
						heat = maxResistPossible;
					} else {
						heat = tempVal;
					}
				}
			}
		} else {
			heat = res.getFloatAt(4);
		}

		// Cold
		if (res.getFloatAt(5) > maxResistPossible) {
			if (res.getFloatAt(5) <= 100) {
				cold = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(5) - 100.f;
				if (tempVal < 0) {
					cold = 0;
				} else {
					if (tempVal > maxResistPossible) {
						cold = maxResistPossible;
					} else {
						cold = tempVal;
					}
				}
			}
		} else {
			cold = res.getFloatAt(5);
		}

		// Electricity
		if (res.getFloatAt(6) > maxResistPossible) {
			if (res.getFloatAt(6) <= 100) {
				electricity = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(6) - 100.f;
				if (tempVal < 0) {
					electricity = 0;
				} else {
					if (tempVal > maxResistPossible) {
						electricity = maxResistPossible;
					} else {
						electricity = tempVal;
					}
				}
			}
		} else {
			electricity = res.getFloatAt(6);
		}

		// Acid
		if (res.getFloatAt(7) > maxResistPossible) {
			if (res.getFloatAt(7) <= 100) {
				acid = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(7) - 100.f;
				if (tempVal < 0) {
					acid = 0;
				} else {
					if (tempVal > maxResistPossible) {
						acid = maxResistPossible;
					} else {
						acid = tempVal;
					}
				}
			}
		} else {
			acid = res.getFloatAt(7);
		}

		// Stun
		if (res.getFloatAt(8) > maxResistPossible) {
			if (res.getFloatAt(8) <= 100) {
				stun = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(8) - 100.f;
				if (tempVal < 0) {
					stun = 0;
				} else {
					if (tempVal > maxResistPossible) {
						stun = maxResistPossible;
					} else {
						stun = tempVal;
					}
				}
			}
		} else {
			stun = res.getFloatAt(8);
		}

		// Lighstaber
		if (res.getFloatAt(9) > maxResistPossible) {
			if (res.getFloatAt(9) <= 100) {
				lightSaber = maxResistPossible;
			} else {
				tempVal = res.getFloatAt(9) - 100.f;
				if (tempVal < 0) {
					lightSaber = 0;
				} else {
					if (tempVal > maxResistPossible) {
						lightSaber = maxResistPossible;
					} else {
						lightSaber = tempVal;
					}
				}
			}
		} else {
			lightSaber = res.getFloatAt(9);
		}
	}

	res.pop();

	LuaObject temps = templateData->getObjectField("templates");
	if (temps.isValidTable()) {
		for (int i = 1; i <= temps.getTableSize(); ++i) {
			String tempName = temps.getStringAt(i).trim();

			if (tempName.endsWith(".iff")) {
				templates.add(tempName);
				continue;
			}

			const Vector<String>& dressGroup = CreatureTemplateManager::instance()->getDressGroup(tempName);
			templates.addAll(dressGroup);
		}
	}

	temps.pop();

	LuaObject lootCollections = templateData->getObjectField("lootGroups");
	lootgroups.readObject(&lootCollections, level);
	lootCollections.pop();

	LuaObject weps = templateData->getObjectField("weapons");

	if (weps.isValidTable()) {
		for (int i = 1; i <= weps.getTableSize(); ++i) {
			weapons.add(weps.getStringAt(i).trim());
		}
	}

	weps.pop();

	LuaObject attackList = templateData->getObjectField("attacks");
	if (attackList.isValidTable()) {
		int size = attackList.getTableSize();
		lua_State* L = attackList.getLuaState();
		for (int i = 1; i <= size; ++i) {
			lua_rawgeti(L, -1, i);
			LuaObject atk(L);

			if (atk.isValidTable()) {
				int atkSize = atk.getTableSize();
				if (atkSize == 2) {
					String com = atk.getStringAt(1).trim();
					String arg = atk.getStringAt(2).trim();

					attacks->addAttack(com, arg);
				}
			}

			atk.pop();
		}
	}

	attackList.pop();

	LuaObject hueTable = templateData->getObjectField("hues");
	if (hueTable.isValidTable()) {
		for (int i = 1; i <= hueTable.getTableSize(); ++i) {
			hues.add(hueTable.getIntAt(i));
		}
	}

	hueTable.pop();

	outfit = templateData->getStringField("outfit");

	aiTemplate = templateData->getStringField("aiTemplate");

	if(!templateData->getStringField("controlDeviceTemplate").isEmpty())
		controlDeviceTemplate = templateData->getStringField("controlDeviceTemplate");

	containerComponentTemplate = templateData->getStringField("containerComponentTemplate");

	reactionStf = templateData->getStringField("reactionStf");
	personalityStf = templateData->getStringField("personalityStf");
}
