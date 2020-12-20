singing_mountain_clan_councilwoman = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_councilwoman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 325,
	chanceHit = 23.5,
	damageMin = 1695,
	damageMax = 2800,
	baseXp = 24180,
	baseHAM = 361000,
	baseHAMmax = 420000,
	armor = 3,
	resists = {100,35,35,100,100,100,100,100,15},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 7500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_councilwoman, "singing_mountain_clan_councilwoman")
