kunga_clan_leader = Creature:new {
	objectName = "@mob/creature_names:kunga_clan_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 125,
	chanceHit = 0.95,
	damageMin = 720,
	damageMax = 1550,
	baseXp = 7207,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 2,
	resists = {30,60,-1,30,30,100,30,-1,-1},
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

	templates = {"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 800000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 800000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(kunga_clan_leader, "kunga_clan_leader")
