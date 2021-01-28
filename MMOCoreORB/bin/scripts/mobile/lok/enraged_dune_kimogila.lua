enraged_dune_kimogila = Creature:new {
	objectName = "@mob/creature_names:enraged_dune_kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 175,
	chanceHit = 6.25,
	damageMin = 1140,
	damageMax = 1790,
	baseXp = 14030,
	baseHAM = 72000,
	baseHAMmax = 105000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,25},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kimogila_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.05,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 3960000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_dune_kimogila, "enraged_dune_kimogila")
