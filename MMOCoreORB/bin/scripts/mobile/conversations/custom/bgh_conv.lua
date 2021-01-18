-- Come back to this, it's broken!
-- local ObjectManager = require("managers.object.object_manager")

-- bghConvoTemplate = ConvoTemplate:new {
-- 	initialScreen = "intro",
-- 	templateType = "Lua",
-- 	luaClassHandler = "bghConvoHandler",
-- 	screens = {}
-- }

-- intro = ConvoScreen:new {
--     id = "intro",
--     leftDialog = "",
--     customDialogText = "I'm tracking some dangerous game on this planet, don't get in my way.", -- Finally, took you long enough! For a while there I actually thought these stinking traitors would take me to where ever they were heading. Did you leave any of them alive?
-- 	stopConversation = "true",
-- 	options = { }
-- }
-- bghConvoTemplate:addScreen(intro);

-- Create new convo handler
-- bghConvoHandler = conv_handler:new {}

-- Register screenplay event handler for convo
-- registerScreenPlay("bghConvoHandler", true)

-- function bghConvoHandler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
-- 	local convoTemplate = LuaConversationTemplate(pConvTemplate)
-- 	return convoTemplate:getScreen("intro")
-- end

-- addConversationTemplate("bghConvoTemplate", bghConvoTemplate);
