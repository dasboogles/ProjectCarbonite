TEST7_acklay = Creature:new {
    objectName = "@mob/creature_names:nightsister_elder",
    customName = "Acklay (LOOT-SIM CL157)",
	socialGroup = "",
	faction = "",
	level = 157,
	chanceHit = 0.01,
	damageMin = 1,
	damageMax = 1,
	baseXp = 1000,
	baseHAM = 100,
	baseHAMmax = 500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/acklay_hue.iff"},
	scale = 0.5,
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			}
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(TEST7_acklay, "TEST7_acklay")
