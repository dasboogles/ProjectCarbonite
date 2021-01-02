janta_soothsayer = Creature:new {
	objectName = "@mob/creature_names:janta_soothsayer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 90,
	chanceHit = 0.85,
	damageMin = 500,
	damageMax = 910,
	baseXp = 5738,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {-1,40,-1,0,0,70,0,-1,-1},
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

CreatureTemplates:addCreatureTemplate(janta_soothsayer, "janta_soothsayer")
