TEST6_ns_elder = Creature:new {
    objectName = "@mob/creature_names:nightsister_elder",
    customName = "Nightsister Elder (LOOT-SIM CL300)",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 0.01,
	damageMin = 1,
	damageMax = 1,
	baseXp = 1000,
	baseHAM = 100,
	baseHAMmax = 500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 5500000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(TEST6_ns_elder, "TEST6_ns_elder")
