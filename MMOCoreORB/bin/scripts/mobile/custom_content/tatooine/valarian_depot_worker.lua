valarian_depot_worker = Creature:new {
	customName = "valarian_depot_worker",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "valarian",
	faction = "valarian",
	level = 17,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1257,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {5,5,5,5,5,5,5,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
				"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
				"object/mobile/dressed_criminal_thug_bothan_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_female_01.iff",
				"object/mobile/dressed_criminal_thug_human_female_02.iff",
				"object/mobile/dressed_criminal_thug_human_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_male_02.iff",
				"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
				"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
				"object/mobile/dressed_crook_zabrak_female_01.iff",
				"object/mobile/dressed_crook_zabrak_male_01.iff",
				"object/mobile/dressed_desperado_bith_female_01.iff",
				"object/mobile/dressed_desperado_bith_male_01.iff",
				"object/mobile/dressed_goon_twk_female_01.iff",
				"object/mobile/dressed_goon_twk_male_01.iff",
				"object/mobile/dressed_hoodlum_zabrak_female_01.iff",
				"object/mobile/dressed_hoodlum_zabrak_male_01.iff",
				"object/mobile/dressed_hooligan_rodian_female_01.iff",
				"object/mobile/dressed_hooligan_rodian_male_01.iff",
				"object/mobile/dressed_mugger.iff",
				"object/mobile/dressed_robber_human_female_01.iff",
				"object/mobile/dressed_robber_human_male_01.iff",
				"object/mobile/dressed_robber_twk_female_01.iff",
				"object/mobile/dressed_robber_twk_male_01.iff",
				"object/mobile/dressed_ruffian_zabrak_female_01.iff",
				"object/mobile/dressed_ruffian_zabrak_male_01.iff",
				"object/mobile/dressed_villain_trandoshan_female_01.iff",
				"object/mobile/dressed_villain_trandoshan_male_01.iff"
				},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1500000},
				{group = "wearables_common", chance = 2000000},
				{group = "rifles", chance = 2000000},
				{group = "tailor_components", chance = 1500000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "jabba_common", chance = 1500000}
			}
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(valarian_depot_worker, "valarian_depot_worker")
