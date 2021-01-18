bh_dune_stalker_brawler = Creature:new {
	objectName = "@mob/creature_names:dune_stalker_brawler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dune_stalker",
	faction = "",
	level = 45,
	chanceHit = 0.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1102,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_dune_stalker_brawler.iff"},
	-- Revamped BH Loot Pass #1
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_all", chance = 1000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 1000000},
			},
			lootChance = 4500000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_dune_stalker_brawler, "bh_dune_stalker_brawler")
