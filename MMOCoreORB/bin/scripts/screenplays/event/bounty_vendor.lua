--                           (o o)
-------------------------oOOo-(_)-oOOo------------------------

local ObjectManager = require("managers.object.object_manager")
local Logger = require("utils.logger")
require("utils.helpers")
spHelper = require("screenplayHelper")

bounty_vendor = ScreenPlay:new {
   numberOfActs = 1, 
   questString = "bounty_vendor",
   states = {}, 
}

-- Disable it for now
-- registerScreenPlay("bounty_vendor", true)

function bounty_vendor:start() 
   local pMerchant = spawnMobile("corellia", "bounty_vendor", 1, -157.57, 28, -4703.94, 90, 0 )
end

bounty_vendor_handler = Object:new {
   tstring = "conversation_exchange_dealer"
 }

function bounty_vendor_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
   local creature = LuaCreatureObject(conversingPlayer)
   local convosession = creature:getConversationSession()
   lastConversation = nil
   local conversation = LuaConversationTemplate(conversationTemplate)
   local nextConversationScreen 
   
   if ( conversation ~= nil ) then
      if ( convosession ~= nil ) then
          local session = LuaConversationSession(convosession)
          if ( session ~= nil ) then
             lastConversationScreen = session:getLastConversationScreen()
          end
      end
      
      if ( lastConversationScreen == nil ) then
         nextConversationScreen = conversation:getInitialScreen()
      else

         local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
         
         local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
         nextConversationScreen = conversation:getScreen(optionLink)
         
         local pInventory = creature:getSlottedObject("inventory")
         local inventory = LuaSceneObject(pInventory)
         local containerSize = inventory:getContainerObjectsSize()
         local itemCounter = 0
         local i = 0 
         local DeleteItems = 0

         for i = 0, containerSize - 1, 1 do
        	 local pInvObj = inventory:getContainerObject(i)
	         local InvObj = LuaSceneObject(pInvObj)
	         	if (InvObj:getObjectName() == "bh_skull")	then
	         		itemCounter = itemCounter + 1
	         	end
	     end
	  
         -- Insufficent Space
         if (SceneObject(pInventory):isContainerFullRecursive()) then
	            nextConversationScreen = conversation:getScreen("insufficient_space")
	            creature:sendSystemMessage("You do not have enough inventory space")  


		--One Skull Screen

	elseif (optionLink == "one") then
		nextConversationScreen = conversation:getScreen("first_screen")

		-- Ten Skulls Screen

	elseif (optionLink == "second") then
		nextConversationScreen = conversation:getScreen("second_screen")


	-- 1 Skull 
				-- Rebel Crusader Armor Bicep l
	     elseif (optionLink == "1" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "1" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bicep_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a ebel Crusader Armor Bicep l Schematic. ")

				-- Rebel Crusader Armor Bicep r
	     elseif (optionLink == "2" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "2" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bicep_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Rebel Crusader Armor Bicep r Schematic.")

				-- Rebel Crusader Armor Belt
	     elseif (optionLink == "3" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "3" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_belt_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Belt Schematic. ")

               -- Rebel Crusader Armor Boots
	     elseif (optionLink == "4" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "4" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_boots_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Boots Schematic. ")

             	 -- Rebel Crusader Armor Bracer l
	     elseif (optionLink == "5" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "5" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bracer_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Bracer l Schematic.")

				-- Rebel Crusader Armor Bracer r
	     elseif (optionLink == "6" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "6" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_bracer_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Bracer r Schematic.")

				-- Rebel Crusader Armor Helmet
	     elseif (optionLink == "7" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "7" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_helmet_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Helmet Schematic.")

				-- Rebel Crusader Armor Leggings
	     elseif (optionLink == "8" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "8" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_leggings_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Leggings Schematic.")
		
            	 -- Rebel Crusader Armor Gloves
	     elseif (optionLink == "9" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "9" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_gloves_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Rebel Crusader Armor Gloves Schematic.")

    -- First Screen Second Page
    	 		-- Imperial Crusader Armor Bicep l
	     elseif (optionLink == "10" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "10" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bicep_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Bicep l Schematic. ")

				-- Imperial Crusader Armor Bicep r
	     elseif (optionLink == "11" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "11" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bicep_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received an Imperial Crusader Armor Bicep r Schematic.")

				-- Imperial Crusader Armor Belt
	     elseif (optionLink == "12" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "12" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_belt_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Belt Schematic. ")

        		-- Imperial Crusader Armor Boots
	     elseif (optionLink == "13" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "13" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_boots_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Boots Schematic. ")

        		-- Imperial Crusader Armor Bracer l
	     elseif (optionLink == "14" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "14" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bracer_l_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Bracer l Schematic.")

				-- Imperial Crusader Armor Bracer r
	     elseif (optionLink == "15" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "15" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_bracer_r_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Bracer r Schematic.")

				-- Imperial Crusader Armor Helmet
	     elseif (optionLink == "16" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "16" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_helmet_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Helmet Schematic.")

				-- Imperial Crusader Armor Leggings
	     elseif (optionLink == "17" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "17" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_leggings_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Leggings Schematic.")
		
                -- Imperial Crusader Armor Gloves
	     elseif (optionLink == "18" and itemCounter < 1) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "18" and itemCounter >= 1) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_gloves_schematic.iff", -1)
	            DeleteItems = 1
		    nextConversationScreen = conversation:getScreen("end")
                    creature:sendSystemMessage("You have received a Imperial Crusader Armor Gloves Schematic.")

	-- 10 Skulls

				-- Rebel Crusader Armor Chest Plate
	     elseif (optionLink == "19" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "19" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_rebel_chest_plate_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Rebel Crusader Armor Chest Plate Schematic.")

				-- Imperial Crusader Armor Chest Plate
	     elseif (optionLink == "20" and itemCounter < 10) then            
	            nextConversationScreen = conversation:getScreen("insufficient_item")
	            creature:sendSystemMessage("You have insufficient items")
	     elseif (optionLink == "20" and itemCounter >= 10) then
	            local pItem = giveItem(pInventory, "object/tangible/loot/loot_schematic/armor_mandalorian_imperial_chest_plate_schematic.iff", -1)
	            DeleteItems = 10
		    nextConversationScreen = conversation:getScreen("end")
		    creature:sendSystemMessage("You have received a Imperial Crusader Armor Chest Plate Schematic.")

          	end
          for i = containerSize - 1 , 0 , -1 do
          	pInvObj = inventory:getContainerObject(i)
        	invObj = LuaSceneObject(pInvObj)
		     	if (invObj:getObjectName() == "bh_skull" and DeleteItems > 0 ) then
		     		DeleteItems = DeleteItems - 1
		     		invObj:destroyObjectFromWorld()
					invObj:destroyObjectFromDatabase()
		       	end
   		  end
   		
      end
   end

   return nextConversationScreen
   
end


function bounty_vendor_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)

   return conversationScreen
end
