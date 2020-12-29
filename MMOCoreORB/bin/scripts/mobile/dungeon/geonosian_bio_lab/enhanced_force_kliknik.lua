enhanced_force_kliknik = Creature:new {
	objectName = "",
	customName = "Force Kliknik",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 115,
	chanceHit = 2.95,
	damageMin = 810,
	damageMax = 1430,
	baseXp = 8964,
	baseHAM = 25000,
	baseHAMmax = 51000,
	armor = 2,
	resists = {35,35,15,25,-1,5,5,20,-1},
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

	templates = {"object/mobile/kliknik_hue.iff"},
	scale = 1.55,
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

CreatureTemplates:addCreatureTemplate(enhanced_force_kliknik, "enhanced_force_kliknik")
