acklay = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "Acklay",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 300,
	chanceHit = 31.0,
	damageMin = 2700,
	damageMax = 3625,
	baseXp = 26654,
	baseHAM = 421000,
	baseHAMmax = 592000,
	armor = 2,
	-- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {75,45,15,55,25,45,-1,30,25},
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
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.25,

	templates = {"object/mobile/acklay_hue.iff"},
	-- Redo This-v
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
				{group = "high_end_weapons_all", chance = 10000000},
			},
			lootChance = 5500000,
        },
        {
	        groups = {
				{group = "armor_all", chance = 10000000},
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
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 5500000,
		},
		---------------------------------
		-- Acklay multi-drop chance group
		{
	        groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 6500000,
		},
		{
	        groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 5500000,
		},
		{
	        groups = {
				{group = "acklay", chance = 10000000},
			},
			lootChance = 4500000,
		},
		---------------------------------
	},
	-- Redo This-^
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay, "acklay")
