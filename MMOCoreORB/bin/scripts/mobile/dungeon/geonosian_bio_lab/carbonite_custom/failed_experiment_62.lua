failed_experiment_62 = Creature:new {
	customName = "Failed Experiment #62",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 220,
	chanceHit = 15,
	damageMin = 3745,
	damageMax = 4995,
	baseXp = 25167,
	baseHAM = 581000,
	baseHAMmax = 787222,
    armor = 3,
    -- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/acklay_hue.iff"},
	scale = 0.5,
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
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 2500000,
        },
        {
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 2500000,
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
				{group = "geonosian_cubes", chance = 10000000},
			},
			lootChance = 5500000,
        },
        {
	        groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 5500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 7500000,
        },
        {
	        groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 7500000,
        },
        {
	        groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 2500000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"posturedownattack","postureDownChance=75"}
	}
}

CreatureTemplates:addCreatureTemplate(failed_experiment_62, "failed_experiment_62")
