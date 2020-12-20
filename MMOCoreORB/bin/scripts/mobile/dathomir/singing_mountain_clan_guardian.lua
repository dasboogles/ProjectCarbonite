singing_mountain_clan_guardian = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_guardian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 165,
	chanceHit = 8.5,
	damageMin = 1250,
	damageMax = 1750,
	baseXp = 14789,
	baseHAM = 95000,
	baseHAMmax = 109000,
	armor = 2,
  resists = {200,30,30,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_guardian.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 4050000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 4050000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_guardian, "singing_mountain_clan_guardian")
