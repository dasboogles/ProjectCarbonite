alert_droideka = Creature:new {
	objectName = "@mob/creature_names:geonosian_droideka_crazed",
	socialGroup = "geonosian",
	faction = "",
	level = 106,
	chanceHit = 2.81,
	damageMin = 795,
	damageMax = 1100,
	baseXp = 8223,
	baseHAM = 14000,
	baseHAMmax = 17000,
	armor = 1,
	resists = {140,155,110,125,125,-1,40,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
        {
			groups = {
				{group = "geonosian_cubes", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 2000000
	    }	
	},
	defaultAttack = "attack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(alert_droideka, "alert_droideka")
