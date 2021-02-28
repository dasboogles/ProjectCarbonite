force_corrupted_rancor_juvenile = Creature:new {
	objectName = "",
	customName = "a Juvenile Force Corrupted Rancor",
	socialGroup = "rancor",
	faction = "",
	level = 125, -- 1 CL less than Ancient Krayts
	chanceHit = 5.0,
	damageMin = 1190, -- Hits a little harder than Krayt Dragons
	damageMax = 1950,
	baseXp = 6821,
	baseHAM = 113410,
	baseHAMmax = 169220,
	armor = 2,
	-- Put this here to help anyone who needs to know what they're changing on some mob somewhere!
	-- {Kinetic, Energy, Blast, Heat, Cold, Elec, Acid, Stun, LS}
	resists = {75,45,55,55,45,45,45,45,15},
	meatType = "meat_carnivore",
	meatAmount = 10521,
	hideType = "hide_leathery",
	hideAmount = 10521,
	boneType = "bone_mammal",
	boneAmount = 10521,
	milk = 0,
	tamingChance = 0,
	ferocity = 50,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 0.50,
	lootGroups = {
        -- Main Roll
        {
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 1500000
        },
        -- Second roll chance
        {
			groups = {
				{group = "force_corrupted_rancor_common", chance = 10000000}
			},
			lootChance = 1500000
        },
		-- Tertiary roll chance
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "rancor_common", chance = 10000000}
			},
			lootChance = 4500000
        },
		{
			groups = {
				{group = "high_end_weapons_all", chance = 10000000}
			},
			lootChance = 1500000
		},
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
				{group = "armor_all", chance = 10000000}
			},
			lootChance = 1500000
		},
    },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(force_corrupted_rancor_juvenile, "force_corrupted_rancor_juvenile")
