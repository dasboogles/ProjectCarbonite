janta_tribesman = Creature:new {
	objectName = "@mob/creature_names:janta_tribesman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 40,
	chanceHit = 0.63,
	damageMin = 190,
	damageMax = 600,
	baseXp = 1803,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 1,
	resists = {0,15,0,-1,0,0,0,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
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

CreatureTemplates:addCreatureTemplate(janta_tribesman, "janta_tribesman")
