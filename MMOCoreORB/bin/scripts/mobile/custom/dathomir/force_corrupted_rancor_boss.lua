force_corrupted_rancor_boss = Creature:new {
	objectName = "",
	customName = "an Alpha Force Corrupted Rancor",
	socialGroup = "rancor",
	faction = "",
	level = 450,
	chanceHit = 25.0,
	damageMin = 9370, -- Probably raid-boss levels of damage?
	damageMax = 13750,
	baseXp = 285490,
	baseHAM = 910000,
	baseHAMmax = 1201000,
	armor = 3,
	-- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {75,45,55,55,45,45,45,45,15},
	meatType = "meat_carnivore",
	meatAmount = 10521,
	hideType = "hide_leathery",
	hideAmount = 10521,
	boneType = "bone_mammal",
	boneAmount = 10521,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/blackwing_rancor_static.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 2.50,
	lootGroups = {
		-- Main Roll
		{
			groups = {
				{group = "rare_boss_loot_tier1", chance = 10000000}
			},
			lootChance = 4500000
		},
        {
			groups = {
				{group = "force_corrupted_rancor_uncommon", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "force_corrupted_rancor_uncommon", chance = 10000000}
			},
			lootChance = 7500000
        },
        {
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 4500000
        },
        -- Second roll chance
        {
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 2500000
        },
        {
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 2500000
        },
		-- Tertiary roll chance
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 5500000
        },
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 4500000
		},
    },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(force_corrupted_rancor_boss, "force_corrupted_rancor_boss")
