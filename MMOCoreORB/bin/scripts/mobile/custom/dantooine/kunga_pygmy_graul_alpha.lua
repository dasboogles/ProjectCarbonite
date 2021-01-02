kunga_pygmy_graul_alpha = Creature:new {
    objectName = "",
    customName = "Kunga Pygmy Graul Alpha",
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 300,
	chanceHit = 16,
	damageMin = 6370, -- Actually hits so hard...
	damageMax = 8750,
	baseXp = 9821,
	baseHAM = 253410,
	baseHAMmax = 369220,
	armor = 2,
	resists = {35,45,70,70,70,-1,25,15,15},
	meatType = "meat_carnivore",
	meatAmount = 9500,
	hideType = "hide_leathery",
	hideAmount = 8750,
	boneType = "bone_mammal",
	boneAmount = 7750,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 0.55,
	lootGroups = {
        -- Main Roll
        {
			groups = {
				{group = "kunga_pygmy_graul_uncommon", chance = 10000000}
			},
			lootChance = 4500000
        },
        {
			groups = {
				{group = "kunga_pygmy_graul_common", chance = 10000000}
			},
			lootChance = 7500000
        },
        -- Second roll chance
        {
			groups = {
				{group = "kunga_pygmy_graul_uncommon", chance = 10000000}
			},
			lootChance = 2500000
        },
        {
			groups = {
				{group = "kunga_pygmy_graul_common", chance = 10000000}
			},
			lootChance = 5500000
        },
        -- Tertiary roll chance
        {
			groups = {
				{group = "kunga_pygmy_graul_uncommon", chance = 10000000}
			},
			lootChance = 1500000
        },
        {
			groups = {
				{group = "kunga_pygmy_graul_common", chance = 10000000}
			},
			lootChance = 2500000
        },
    },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kunga_pygmy_graul_alpha, "kunga_pygmy_graul_alpha")
