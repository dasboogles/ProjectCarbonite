enhanced_kliknik = Creature:new {
	objectName = "@mob/creature_names:geonosian_kliknik_force_strong",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 109,
	chanceHit = 2.5,
	damageMin = 875,
	damageMax = 1360,
	baseXp = 10360,
	baseHAM = 37000,
	baseHAMmax = 48000,
	armor = 2,
	resists = {40,40,10,45,-1,20,20,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kliknik.iff"},
	scale = 1.4,
	lootGroups = { -- Refactor
		{
	        groups = 
			{
				{group = "geo_kliknik", chance = 10000000},
			},
			lootChance = 1500000,
        },
	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_kliknik, "enhanced_kliknik")
