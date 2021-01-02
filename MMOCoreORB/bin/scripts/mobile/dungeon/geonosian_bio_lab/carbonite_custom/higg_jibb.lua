higg_jibb = Creature:new {
	customName = "Higg Jibb",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 500,
	chanceHit = 50,
	damageMin = 800,
	damageMax = 1500,
	baseXp = 9296845,
	baseHAM = 2306000,
	baseHAMmax = 2652000,
	armor = 2,
	resists = {75,75,75,75,75,75,25,25,65},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	scale = 1.0,
	lootGroups = {
        -- TODO:
        -- Eventually replace these generic 'CA' with 'force_clothing_attachments'
		------------------------
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 7500000,
		},
		{
            groups = 
            {
                {group = "experimental_geo_cubes", chance = 10000000},
            },
            lootChance = 7500000,
        },
		{
	        groups = 
			{
				{group = "experimental_components", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
	        groups = 
			{
				{group = "experimental_components", chance = 10000000},
			},
			lootChance = 4500000,
        },
		{
	        groups = 
			{
				{group = "experimental_components", chance = 10000000},
			},
			lootChance = 3500000,
		},
	
		-- Collectables Loot Section
        {
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "carbonite_painting_collectables", chance = 10000000},
			},
			lootChance = 10000000,
        },
        -- Generic Loot Sections
        {
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
        },
        {
	        groups = 
			{
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 10000000,
		},
        -- Attachments Loot Sections
		{
	        groups = 
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000,
		},
		{
	        groups = 
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000,
		},
		{
	        groups = 
			{
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000,
		},
		 -- Special Loot Sections
		{
			groups = 
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 3500000,
		},
		{
			groups = 
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 3500000,
		},	
		{
			groups = 
			{
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 3500000,
        },		
        ------------------------
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(higg_jibb, "higg_jibb")
