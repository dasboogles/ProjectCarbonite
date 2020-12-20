singing_mountain_clan_arch_witch = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_arch_witch",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 115,
	chanceHit = 2.25,
	damageMin = 1025,
	damageMax = 1275,
	baseXp = 10174,
	baseHAM = 34000,
	baseHAMmax = 50000,
	armor = 2,
	resists = {100,25,25,100,100,100,100,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_arch_witch.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 3050000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 3050000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_arch_witch, "singing_mountain_clan_arch_witch")
