object_draft_schematic_chemistry_medpack_enhance_omni = object_draft_schematic_chemistry_shared_medpack_enhance_omni:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Omni-Medical Enhancement",

	craftingToolTab = 64, -- (See DraftSchematicObjectTemplate.h)
	complexity = 22,
	size = 3,
	factoryCrateSize = 10000,

	xpType = "crafting_medicine_general",
	xp = 60,

	assemblySkill = "medicine_assembly",
	experimentingSkill = "medicine_experimentation",
	customizationSkill = "medicine_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n"},
	ingredientTitleNames = {"organic_element", "inorganic_element", "delivery_medium", "drug_duration_compound", "drug_strength_compound"},
	ingredientSlotType = {0, 0, 1, 1, 1},
	resourceTypes = {"organic", "inorganic", "object/tangible/component/chemistry/shared_solid_delivery_shell.iff", "object/tangible/component/chemistry/shared_release_mechanism_duration.iff", "object/tangible/component/chemistry/shared_biologic_effect_controller.iff"},
	resourceQuantities = {140, 140, 5, 10, 15},
	contribution = {100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/medicine/crafted/medpack_enhance_omni.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_chemistry_medpack_enhance_omni, "object/draft_schematic/chemistry/medpack_enhance_omni.iff")
