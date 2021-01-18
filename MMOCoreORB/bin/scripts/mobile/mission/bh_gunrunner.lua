bh_gunrunner = Creature:new {
	objectName = "@mob/creature_names:gunrunner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mercenary",
	faction = "",
	level = 30,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 292,
	baseHAM = 810,
	baseHAMmax = 990,
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_gunrunner.iff"},
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
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(bh_gunrunner, "bh_gunrunner")
