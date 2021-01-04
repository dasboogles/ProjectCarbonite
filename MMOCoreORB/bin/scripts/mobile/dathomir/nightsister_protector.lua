nightsister_protector = Creature:new {
	objectName = "@mob/creature_names:nightsister_protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 150,
	chanceHit = 4.75,
	damageMin = 1070,
	damageMax = 1550,
	baseXp = 12424,
	baseHAM = 55000,
	baseHAMmax = 71000,
	armor = 2,
	resists = {45,200,45,200,200,200,200,200,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	lootGroups = {
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 2500000
		},
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
			lootChance = 1000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "wearables_scarce", chance = 10000000}
			},
			lootChance = 4500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamid,brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_protector, "nightsister_protector")
