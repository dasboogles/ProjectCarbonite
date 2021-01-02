singing_mountain_clan_rancor = Creature:new {
	objectName = "@mob/creature_names:singing_mountain_clan_rancor",
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 75,
	chanceHit = 1.5,
	damageMin = 770,
	damageMax = 950,
	baseXp = 5281,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 2,
	resists = {130,160,25,200,200,200,25,25,-1},
	meatType = "meat_carnivore",
	meatAmount = 620,
	hideType = "hide_leathery",
	hideAmount = 510,
	boneType = "bone_mammal",
	boneAmount = 480,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.05,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 5500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_rancor, "singing_mountain_clan_rancor")
