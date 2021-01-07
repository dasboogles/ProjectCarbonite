be_rok_sa = Creature:new {
    objectName = "@mob/creature_names:be_rok_sa",
    customName = "Be`Rok Sa (Old Geonosian General)",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 215,
	chanceHit = 10,
	damageMin = 2845,
	damageMax = 4010,
	baseXp = 25167,
	baseHAM = 331000,
	baseHAMmax = 577000,
    armor = 2,
    -- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {75,25,35,15,15,45,5,20,-1},
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
    scale = 1.5,

	templates = {
		"object/mobile/dressed_geonosian_warrior_01.iff",
		"object/mobile/dressed_geonosian_warrior_02.iff",
        "object/mobile/dressed_geonosian_warrior_03.iff"
    },
    lootGroups = {
        {
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 100000,
		},
        {
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 4500000,
        },
        {
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 4500000,
        },
        {
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 4500000,
        },
        {
            groups = 
            {
                {group = "carbonite_painting_collectables", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "geo_custom_schematics", chance = 10000000},
            },
            lootChance = 4500000,
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
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "geonosian_common", chance = 10000000},
            },
            lootChance = 1500000,
        },
        {
            groups = {
                {group = "geonosian_cubes", chance = 10000000},
            },
            lootChance = 1500000,
        },
        {
            groups = {
                {group = "geonosian_cubes", chance = 10000000},
            },
            lootChance = 1500000,
        },
        {
            groups = {
                {group = "high_end_weapons_all", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "armor_all", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "clothing_attachments", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "armor_attachments", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "clothing_attachments", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
            groups = {
                {group = "armor_attachments", chance = 10000000},
            },
            lootChance = 2500000,
        },
    },
	weapons = {"geonosian_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(be_rok_sa, "be_rok_sa")
