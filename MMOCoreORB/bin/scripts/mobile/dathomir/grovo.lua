grovo = Creature:new {
	objectName = "@monster_name:grovo",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 275,
	chanceHit = 10.7,
	damageMin = 1120,
	damageMax = 2250,
	baseXp = 27207,
	baseHAM = 120000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {55,60,55,75,75,75,45,45,-1},
	meatType = "meat_carnivore",
	meatAmount = 3000,
	hideType = "hide_leathery",
	hideAmount = 3000,
	boneType = "bone_mammal",
	boneAmount = 1950,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/nsister_rancor_grovo.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.55,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000}
			},
			lootChance = 7500000
		},
	},

	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(grovo, "grovo")
