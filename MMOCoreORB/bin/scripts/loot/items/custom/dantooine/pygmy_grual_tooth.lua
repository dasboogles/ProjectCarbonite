--Author: Boogles

pygmy_grual_tooth = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Pygmy Grual Tooth",
	directObjectTemplate = "object/tangible/component/weapon/rancor_tooth.iff",
	craftingValues = {
		{"mindamage",75,215,0},
		{"maxdamage",105,215,0},
		{"attackspeed",0.5,0,1},
		{"woundchance",22,40,0},
		{"hitpoints",700,950,0},
		{"zerorangemod",1,11,0},
		{"maxrangemod",1,11,0},
		{"midrangemod",1,11,0},
		{"attackhealthcost",32,8,0},
		{"attackactioncost",27,8,0},
		{"attackmindcost",27,8,0},
		{"useCount",7,25,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("pygmy_grual_tooth", pygmy_grual_tooth)