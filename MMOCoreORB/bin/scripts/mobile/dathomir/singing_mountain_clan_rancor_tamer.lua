singing_mountain_clan_rancor_tamer = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_rancor_tamer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 85,
	chanceHit = 1.95,
	damageMin = 920,
	damageMax = 1050,
	baseXp = 7207,
	baseHAM = 32000,
	baseHAMmax = 45000,
	armor = 1,
	resists = {30,30,75,15,75,30,30,30,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_rancor_tamer.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 2550000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 2550000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_rancor_tamer, "singing_mountain_clan_rancor_tamer")
