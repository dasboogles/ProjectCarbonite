singing_mountain_clan_initiate = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_initiate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 65,
	chanceHit = 1.5,
	damageMin = 595,
	damageMax = 800,
	baseXp = 4916,
	baseHAM = 15000,
	baseHAMmax = 22000,
	armor = 1,
	resists = {30,30,75,15,75,15,15,35,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_initiate.iff"},

	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
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
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_initiate, "singing_mountain_clan_initiate")
