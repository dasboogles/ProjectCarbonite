-- Carbonite Custom Item

force_corrupted_pearl = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Force Corrupted Pearl",
	directObjectTemplate = "object/tangible/component/weapon/lightsaber/lightsaber_module_krayt_dragon_pearl.iff",
	craftingValues = {
		{"color",31,31,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("force_corrupted_pearl", force_corrupted_pearl)
