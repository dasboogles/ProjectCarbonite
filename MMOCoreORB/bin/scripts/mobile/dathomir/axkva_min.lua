axkva_min = Creature:new {
	objectName = "@mob/creature_names:axkva_min",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 375,
	chanceHit = 30,
	damageMin = 1845,
	damageMax = 3250,
	specialDamageMult = 7.5,
	baseXp = 285496,
	baseHAM = 585000,
	baseHAMmax = 971000,
	armor = 3,
	resists = {65,75,75,65,65,65,65,65,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},

	lootGroups = {
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "wearables_rare", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 4500000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(axkva_min, "axkva_min")
