bh_scientist = Creature:new {
	objectName = "@mob/creature_names:scientist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 75,
	chanceHit = 0.410000,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3279,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_combatmedic_trainer_human_male_01.iff",
		"object/mobile/dressed_brigade_captain_human_male_01.iff",
		"object/mobile/dressed_hutt_medic2_twilek_male_01.iff",
		"object/mobile/dressed_combatmedic_trainer_human_female_01.iff",
		"object/mobile/dressed_doctor_trainer_moncal_male_01.iff",
		"object/mobile/dressed_combatmedic_trainer_rodian_male_01.iff",
		"object/mobile/dressed_mercenary_medic_rodian_female_01.iff" },
	-- Revamped BH Loot Pass #1
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 5500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 5000000},
				{group = "power_crystals", chance = 5000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "armor_all", chance = 1000000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "high_end_weapons_all", chance = 1000000},
			},
			lootChance = 4500000
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_scientist, "bh_scientist")
