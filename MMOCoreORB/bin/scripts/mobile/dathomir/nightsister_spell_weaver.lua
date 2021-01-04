nightsister_spell_weaver = Creature:new {
	objectName = "@mob/creature_names:nightsister_spell_weaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 110,
	chanceHit = 2.1,
	damageMin = 945,
	damageMax = 1375,
	baseXp = 10174,
	baseHAM = 29000,
	baseHAMmax = 49000,
	armor = 2,
	resists = {5,100,5,100,100,100,100,100,-1},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_spellweaver.iff"},
	lootGroups = {
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
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2000000
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
			lootChance = 3500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermid,swordsmanmid,pikemanmaster,tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_spell_weaver, "nightsister_spell_weaver")
