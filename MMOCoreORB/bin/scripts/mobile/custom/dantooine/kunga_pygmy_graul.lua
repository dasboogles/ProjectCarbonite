kunga_pygmy_graul = Creature:new {
    objectName = "",
    customName = "Kunga Pygmy Graul",
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 175,
	chanceHit = 0.95,
	damageMin = 1370, -- They don't hit that hard, but they swarm you!
	damageMax = 1750,
	baseXp = 9821,
	baseHAM = 22541,
	baseHAMmax = 35731,
	armor = 1,
	resists = {35,45,70,70,70,-1,25,15,15},
	meatType = "meat_carnivore",
	meatAmount = 1025,
	hideType = "hide_leathery",
	hideAmount = 1137,
	boneType = "bone_mammal",
	boneAmount = 1291,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 0.25,
	lootGroups = {
        {
			groups = {
				{group = "kunga_pygmy_graul_common", chance = 10000000}
			},
			lootChance = 1250000
        },
        {
			groups = {
				{group = "kunga_pygmy_graul_uncommon", chance = 10000000}
			},
			lootChance = 750000
        },
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kunga_pygmy_graul, "kunga_pygmy_graul")
