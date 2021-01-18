bh_tusken_carnage_champion = Creature:new {
	objectName = "@mob/creature_names:tusken_fort_tusken_champion",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 200,
	chanceHit = 3.85,
	damageMin = 750,
	damageMax = 1210,
	baseXp = 11015,
	baseHAM = 43000,
	baseHAMmax = 53000,
	armor = 2,
	resists = {85,60,30,100,-1,100,-1,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
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
			lootChance = 3500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "armor_all", chance = 1000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 1000000},
			},
			lootChance = 7500000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_tusken_carnage_champion, "bh_tusken_carnage_champion")
