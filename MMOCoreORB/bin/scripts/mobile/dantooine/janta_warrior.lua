janta_warrior = Creature:new {
	objectName = "@mob/creature_names:janta_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 95,
	chanceHit = 0.87,
	damageMin = 495,
	damageMax = 900,
	baseXp = 6655,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 2,
	resists = {25,45,-1,45,45,100,45,-1,-1},
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

CreatureTemplates:addCreatureTemplate(janta_warrior, "janta_warrior")
