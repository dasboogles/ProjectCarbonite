corrupted_rancor = Creature:new {
	objectName = "",
	customName = "Corrupted Rancor",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 350,
	chanceHit = 40.0,
	damageMin = 2000,
	damageMax = 3500,
	baseXp = 28549,
	baseHAM = 800000,
	baseHAMmax = 801000,
	armor = 3,
	resists = {95,55,95,95,65,95,75,35,35},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/blackwing_rancor_static.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "rancor_boss", chance = 10000000},	
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "clothing_attachments", chance = 10000000},				
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	    {"creatureareaknockdown","knockdownChance=90"},
		{"creatureareadisease","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=100"},
		{"strongpoison","stateAccuracyBonus=100"},
		{"creatureareapoison","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(corrupted_rancor, "corrupted_rancor")
