object_tangible_wearables_armor_galactic_marine_armor_galactic_marine_helmet = object_tangible_wearables_armor_galactic_marine_shared_armor_galactic_marine_helmet:new {
	templateType = ARMOROBJECT,

	faction = "Imperial",
	--noTrade = 1,
	playerRaces = { 	"object/creature/player/smc_female.iff",
				"object/creature/player/smc_male.iff",
				"object/creature/player/nightsister_female.iff",
				"object/creature/player/nightsister_male.iff",
				"object/creature/player/nikto_male.iff",
				"object/creature/player/nikto_female.iff",
				"object/creature/player/aqualish_female.iff",
				"object/creature/player/aqualish_male.iff",
				"object/creature/player/bith_female.iff",
				"object/creature/player/bith_male.iff",
				"object/creature/player/chiss_female.iff",
				"object/creature/player/chiss_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/bothan_male.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },
	
	-- The damage types in WeaponObject
	vulnerability = LIGHTSABER,

	-- These are default Blue Frog stats
	healthEncumbrance = 15,
	actionEncumbrance = 15,
	mindEncumbrance = 35,

	maxCondition = 30000,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,

	kinetic = 53,
	energy = 53,
	electricity = 62,
	stun = 22,
	blast = 62,
	heat = 62,
	cold = 62,
	acid = 73,
	lightSaber = 0,
	
	skillMods = {
        {"slope_move", 2},
        {"dizzy_defense", 2},
        {"blind_defense", 2},
        {"stun_defense", 2}
    }
}

ObjectTemplates:addTemplate(object_tangible_wearables_armor_galactic_marine_armor_galactic_marine_helmet, "object/tangible/wearables/armor/galactic_marine/armor_galactic_marine_helmet.iff")
