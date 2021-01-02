janta_primalist = Creature:new {
	objectName = "@mob/creature_names:janta_primalist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 65,
	chanceHit = 0.77,
	damageMin = 405,
	damageMax = 720,
	baseXp = 4097,
	baseHAM = 9700,
	baseHAMmax = 11900,
	armor = 1,
	resists = {-1,0,-1,0,0,60,0,-1,-1},
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
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "janta_common", chance = 10000000}
			},
			lootChance = 1250000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
			},
			lootChance = 750000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_primalist, "janta_primalist")
