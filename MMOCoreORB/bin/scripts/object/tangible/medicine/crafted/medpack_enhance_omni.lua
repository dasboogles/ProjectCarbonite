object_tangible_medicine_crafted_medpack_enhance_omni = object_tangible_medicine_crafted_shared_medpack_enhance_omni:new {
	gameObjectType = 8238,
	templateType = ENHANCEPACK,
	useCount = 10, -- Moved from 30 -> 10
	medicineUse = 0,
	effectiveness = 1000,
	duration = 12600,
	attribute = 69,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 1},
	experimentalProperties = {"XX", "XX", "OQ", "PE", "OQ", "UT", "DR", "OQ", "OQ", "PE", "XX"},
	experimentalWeights = {1, 1, 2, 1, 2, 1, 1, 1, 2, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_effectiveness", "exp_charges", "exp_effectiveness", "expEaseOfUse", "null"},
	experimentalSubGroupTitles = {"null", "null", "power", "charges", "duration", "skillmodmin", "hitpoints"},
	experimentalMin = {0, 0, 10, 5, 3600, 0, 1000},
	experimentalMax = {0, 0, 1000, 20, 14400, 0, 1000},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 4},
}

ObjectTemplates:addTemplate(object_tangible_medicine_crafted_medpack_enhance_omni, "object/tangible/medicine/crafted/medpack_enhance_omni.iff")