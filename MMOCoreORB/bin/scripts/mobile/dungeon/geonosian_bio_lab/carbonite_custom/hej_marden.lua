hej_marden = Creature:new {
    objectName = "@mob/creature_names:hej_marden",
	customName = "Hej Marden (Rogue Imperial Admiral)",
	socialGroup = "geonosian",
	faction = "",
	level = 205,
	chanceHit = 12,
	damageMin = 2845,
	damageMax = 4410,
	baseXp = 25167,
	baseHAM = 421000,
	baseHAMmax = 747000,
    armor = 1,
    -- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {25,25,15,15,15,45,35,20,-1},
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

	templates = {"object/mobile/dressed_imperial_restuss_admiral_grot.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 500000,
		},
		{
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 3500000,
		},
		{
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
            groups = {
                {group = "geo_custom_schematics", chance = 10000000},
            },
            lootChance = 3500000,
		},
		{
            groups = {
                {group = "geo_custom_schematics", chance = 10000000},
            },
            lootChance = 3500000,
        },
		{
	        groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 1500000,
        },
        {
	        groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 1500000,
        },
        {
	        groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 1500000,
		},
		{
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
		},
		{
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 3500000,
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,marksmanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(hej_marden, "hej_marden")

