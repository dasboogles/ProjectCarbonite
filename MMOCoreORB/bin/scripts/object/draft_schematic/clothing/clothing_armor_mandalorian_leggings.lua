object_draft_schematic_clothing_clothing_armor_mandalorian_leggings = object_draft_schematic_clothing_shared_clothing_armor_mandalorian_leggings:new {
templateType = DRAFTSCHEMATIC,

   customObjectName = "Mandalorian Armor Leggings",

   craftingToolTab = 2, -- (See DraftSchemticImplementation.h)
   complexity = 45, 
   size = 1, 

   xpType = "crafting_clothing_armor", 
   xp = 1166, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body"},
   ingredientSlotType = {0, 0},
   resourceTypes = {"hide", "metal"},
   resourceQuantities = {150, 150},
   contribution = {100, 100},


   targetTemplate = "object/tangible/wearables/armor/mandalorian/armor_mandalorian_leggings.iff",

   additionalTemplates = {
             }
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_armor_mandalorian_leggings, "object/draft_schematic/clothing/clothing_armor_mandalorian_leggings.iff")