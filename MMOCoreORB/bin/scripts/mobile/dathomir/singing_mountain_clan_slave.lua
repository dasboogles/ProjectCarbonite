singing_mountain_clan_slave = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 50,
	chanceHit = 1.25,
	damageMin = 430,
	damageMax = 540,
	baseXp = 292,
	baseHAM = 5405,
	baseHAMmax = 10495,
	armor = 0,
	resists = {25,25,25,25,25,25,25,25,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_slave.iff"},
	lootGroups = {
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 2500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_slave, "singing_mountain_clan_slave")
