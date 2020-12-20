--                           (o o)
-------------------------oOOo-(_)-oOOo------------------------

bounty_vendor_template = ConvoTemplate:new {
   initialScreen = "menu_screen",
   templateType = "Lua",
   luaClassHandler = "bounty_vendor_handler",
   screens = {}
}

-- 1 Skull Screen

bounty_vendor_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "",
   customDialogText = "For 1 Bounty Skull you may choose one of the following",
   stopConversation = "false",
   options = {
      {"Rebel Crusader Armor Bicep l", "1"},
      {"Rebel Crusader Armor Bicep r", "2"},
      {"Rebel Crusader Armor Belt", "3"},
      {"Rebel Crusader Armor Boots", "4"},
      {"Rebel Crusader Armor Bracer l", "5"},
      {"Rebel Crusader Armor Bracer r", "6"},
      {"Rebel Crusader Armor Helmet", "7"},
      {"Rebel Crusader Armor Leggings", "8"},
      {"Rebel Crusader Armor Gloves", "9"}, 
      {"Next Page", "first2_screen"},
      {"Back", "menu_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
bounty_vendor_template:addScreen(bounty_vendor_first_screen);

-- 1 Skull Screen 2
bounty_vendor_first2_screen = ConvoScreen:new {
   id = "first2_screen",
   leftDialog = "",
   customDialogText = "For 1 Bounty Skull you may choose one of the following",
   stopConversation = "false",
   options = {
      {"Imperial Crusader Armor Bicep l", "10"},
      {"Imperial Crusader Armor Bicep r", "11"},
      {"Imperial Crusader Armor Belt", "12"},
      {"Imperial Crusader Armor Boots", "13"},
      {"Imperial Crusader Armor Bracer l", "14"},
      {"Imperial Crusader Armor Bracer r", "15"},
      {"Imperial Crusader Armor Helmet", "16"},
      {"Imperial Crusader Armor Leggings", "17"},
      {"Imperial Crusader Armor Gloves", "18"},
      {"Previous Page", "first_screen"},
      {"Back", "menu_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
bounty_vendor_template:addScreen(bounty_vendor_first2_screen);
-- 10 Skull Screen

bounty_vendor_second_screen = ConvoScreen:new {
   id = "second_screen",
   leftDialog = "",
   customDialogText = "For 10 Bounty Skulls you may choose one of the following",
   stopConversation = "false",
   options = {
      {"Rebel Crusader Armor Chest Plate", "19"},
      {"Imperial Crusader Armor Chest Plate", "20"},
      {"Back", "menu_screen"}, 
      {"No thank you.", "deny_quest"},
      }
}
bounty_vendor_template:addScreen(bounty_vendor_second_screen);

bounty_vendor_menu_screen = ConvoScreen:new {
   id = "menu_screen",
   leftDialog = "",
   customDialogText = "Greetings, Have you been successful in any hunts latley? If so take a look, I'll gladly take those Tokens off your hands!!",
   stopConversation = "false",
   options = {
      {"1 Bounty Skulls", "one"},
      {"10 Bounty Skulls", "second"},
      {"No thank you.", "deny_quest"},
      }
}
bounty_vendor_template:addScreen(bounty_vendor_menu_screen);

bounty_vendor_end_quest = ConvoScreen:new {
   id = "end",
   leftDialog = "",
   customDialogText = "A good choice. Happy hunting!",
   stopConversation = "true",
   options = {   
   }
}
bounty_vendor_template:addScreen(bounty_vendor_end_quest);

bounty_vendor_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, have a nice day and a try not to get killed!",
   stopConversation = "true",
   options = {   
   }
}
bounty_vendor_template:addScreen(bounty_vendor_deny_quest);

bounty_vendor_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "You have an insufficient amount of Bounty Skulls. I will be here when you get back!",
   stopConversation = "true",
   options = {   
   }
}
bounty_vendor_template:addScreen(bounty_vendor_insufficient_funds);

bounty_vendor_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the item. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
bounty_vendor_template:addScreen(bounty_vendor_insufficient_space);

bounty_vendor_insufficient_item = ConvoScreen:new {
   id = "insufficient_item",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have a sufficient amount of Bounty Skulls to purchase this item.",
   stopConversation = "true",
   options = {   
   }
}
bounty_vendor_template:addScreen(bounty_vendor_insufficient_item);

addConversationTemplate("bounty_vendor_template", bounty_vendor_template);
