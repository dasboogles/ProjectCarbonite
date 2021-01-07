failed_ns_clone = Creature:new {
	objectName = "@mob/creature_names:failed_ns_clone",
	customName = "A Failed Nightsister Clone",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 225,
	chanceHit = 17,
	damageMin = 1645,
	damageMax = 3710,
	baseXp = 25167,
	baseHAM = 351000,
	baseHAMmax = 422000,
    armor = 2,
    -- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {45,65,85,5,5,65,15,65,45},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
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
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 2500000,
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
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
	        groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nightsister_common", chance = 5000000},
				
			},
			lootChance = 5500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nightsister_common", chance = 5000000},
				
			},
			lootChance = 5500000,
		},
		{
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 5500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
	        groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nightsister_common", chance = 5000000},
				
			},
			lootChance = 5500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "nightsister_common", chance = 5000000},
				
			},
			lootChance = 5500000,
		},
		{
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 5500000,
        },
        {
	        groups = {
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 5500000,
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(failed_ns_clone, "failed_ns_clone")
