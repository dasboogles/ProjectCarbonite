nightsister_enraged_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:nightsister_enraged_bull_rancor",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 99,
	chanceHit = 2.85,
	damageMin = 770,
	damageMax = 1050,
	baseXp = 8500,
	baseHAM = 33000,
	baseHAMmax = 46000,
	armor = 2,
	resists = {40,170,40,200,200,200,40,40,-1},
	meatType = "meat_carnivore",
	meatAmount = 880,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 670,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 2500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(nightsister_enraged_bull_rancor, "nightsister_enraged_bull_rancor")
