exar_add = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_red",
	customName = "Exar Kun Protector",
	socialGroup = "exarkun",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 25000,
	baseHAM = 180000,
	baseHAMmax = 200000,
	armor = 3,
	resists = {85,85,35,55,95,35,75,65,30},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_death_watch_red.iff",
		"object/mobile/dressed_death_watch_gold.iff",
		"object/mobile/dressed_death_watch_grey.iff",},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 500000
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(exar_add, "exar_add")
