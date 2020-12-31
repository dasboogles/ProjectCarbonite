nightsister_slave = Creature:new {
	objectName = "@mob/creature_names:nightsister_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 45,
	chanceHit = 0.91,
	damageMin = 360,
	damageMax = 570,
	baseXp = 1714,
	baseHAM = 5500,
	baseHAMmax = 7900,
	armor = 1,
	resists = {25,25,25,25,25,25,25,25,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_slave.iff"},

	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 1500000
		},
		-- Slaves should not drop tapes or crystals!
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 4500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermid
}

CreatureTemplates:addCreatureTemplate(nightsister_slave, "nightsister_slave")
