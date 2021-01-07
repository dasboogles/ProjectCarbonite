enhanced_rancor = Creature:new {
	objectName = "@mob/creature_names:enhanced_rancor",
	customName = "an Escaped Dangerous Project",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 235,
    chanceHit = 18.5,
    -- Super Spikey Damage!
	damageMin = 3152, 
    damageMax = 7782,
    -- Super Spikey Damage!
	baseXp = 79336,
	baseHAM = 522222,
	baseHAMmax = 611111,
	armor = 2,
	resists = {55,60,45,70,70,70,45,45,35},
	meatType = "meat_carnivore",
	meatAmount = 0,
	hideType = "hide_leathery",
	hideAmount = 0,
	boneType = "bone_mammal",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	scale = 1.5,
	lootGroups = {	
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000},
			},
			lootChance = 1500000,
		},
		{
	        groups = 
			{
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 10000000,
		},
		{
	        groups = 
			{
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
	        groups = 
			{
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
	        groups = 
			{
				{group = "rancor_common", chance = 10000000},
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
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 3500000,
		},
		{
	        groups = {
				{group = "armor_attachments", chance = 10000000},
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
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
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
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
		},
		{
			groups = {
				{group = "grenades_looted", chance = 10000000},
			},
			lootChance = 7500000,
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareattack",""},
		{"stunattack","stunChance=70"},
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_rancor, "enhanced_rancor")
