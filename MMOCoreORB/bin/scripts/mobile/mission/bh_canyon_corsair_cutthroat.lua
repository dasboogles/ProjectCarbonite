bh_canyon_corsair_cutthroat = Creature:new {
	objectName = "@mob/creature_names:canyon_corsair_cutthroat",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "canyon_corsair",
	faction = "canyon_corsair",
	level = 85,
	chanceHit = 0.4,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3551,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {20,45,20,20,-1,20,20,-1,-1},
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

	templates = {
		"object/mobile/dressed_corsair_cutthroat_hum_f.iff",
		"object/mobile/dressed_corsair_cutthroat_hum_m.iff",
		"object/mobile/dressed_corsair_cutthroat_wee_m.iff",
		"object/mobile/dressed_corsair_cutthroat_zab_m.iff"
	},

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
			lootChance = 4500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 4500000
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

	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(swordsmanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_canyon_corsair_cutthroat, "bh_canyon_corsair_cutthroat")
