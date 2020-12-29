
exar_encounter = ScreenPlay:new {
	numberOfActs = 1,

}
spHelper = require("screenplayHelper")
registerScreenPlay("exar_encounter", true)
local ObjectManager = require("managers.object.object_manager")  --print("Object manager loaded for Exar Kun")

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function exar_encounter:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
 	end
end

function exar_encounter:spawnSceneObjects()

	
end

function exar_encounter:spawnMobiles()
	-- Respawns anywhere between 4 hours to 6 hours
	local pTrigger = spawnMobile("yavin4", "ancient_mouse_droid", getRandomNumber(14400, 21600), 5079, 73, 5538, 90, 0)
	if (pTrigger ~= nil ) then
        createObserver(OBJECTDESTRUCTION, "exar_encounter", "notifyTriggerDead", pTrigger)
	end
	writeData("exar_encounter:spawnState",0)
	return 0

end

function exar_encounter:notifyTriggerDead(pTrigger, pPlayer)
	local pBoss = spawnMobile("yavin4", "exarkun", 0, 5079, 73, 5538, 90, 0) print("spawned Exar Kun")
	ObjectManager.withCreatureObject(pBoss, function(oBoss)
		writeData("exar_encounter:spawnState", 1)
		writeData("exar_encounter", oBoss:getObjectID())
		spatialChat(pBoss, "I was the greatest Dark Lord of the Sith...You are not welcome here!  Leave NOW or be DESTROYED!!")
		createObserver(DAMAGERECEIVED,"exar_encounter","boss_damage", pBoss)
		createObserver(OBJECTDESTRUCTION, "exar_encounter", "notifyBossDead", pBoss)
		createEvent(1800000, "exar_encounter", "despawnBoss", pBoss,"")
	end)
	return 0
end

function exar_encounter:notifyBossDead(pBoss, pPlayer)
	writeData("exar_encounter:spawnState", 0)
	return 0
end



function exar_encounter:despawnBoss(pBoss, pPlayer)
	forcePeace(pBoss)
	spHelper.destroy(readData("exar_encounter"),true)
	writeData("exar_encounter:spawnState", 0)
	return 0
end

function exar_encounter:boss_damage(pBoss, pPlayer)

	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if (boss ~= nil) then
		local heal = 2000000
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = 5094
		local y1 = 5536
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY()

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 50

		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "You are NO match for me! Now run away")
			forcePeace(pBoss)
			forcePeace(pBoss)
			forcePeace(pBoss)
			CreatureObject(pBoss):healDamage(heal, 0)
      		CreatureObject(pBoss):healDamage(heal, 3)
      		CreatureObject(pBoss):healDamage(heal, 6)
			createEvent(3500, "exar_encounter", "resetScreenplayStatus", pPlayer,"")
			exar_encounter:despawnBoss(pBoss)

		end


		if (((bossHealth <= (bossMaxHealth *0.8)) or (bossAction <= (bossMaxAction * 0.8)) or (bossMind <= (bossMaxMind *0.8))) and readData("exar_encounter:spawnState") == 1) then
			spatialChat(pBoss, "So you think you have a chance of defeating me! Lets test your resolve!")
			writeData("exar_encounter:spawnState",2)
			local pAdd = spawnMobile("yavin4", "exar_add", 0, 5100, 73, 5538, 270, 0)

			ObjectManager.withCreatureObject(pAdd, function(firstTime)
				firstTime:engageCombat(pPlayer)
			end)
			spatialChat(pAdd, "Get them!")
	
			local pAddTwo = spawnMobile("yavin4", "exar_add", 0, 5100, 73, 5518, 270, 0)

			ObjectManager.withCreatureObject(pAddTwo, function(secondTime)
				secondTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddTwo, "We will protect you!")
		
			local pAddThree = spawnMobile("yavin4", "exar_add", 0, 5094, 73, 5556, 270, 0)

			ObjectManager.withCreatureObject(pAddThree, function(thirdTime)
				thirdTime:engageCombat(pPlayer)
			end)				
 			spatialChat(pAddThree, "Kill them all")
		
			local pAddFour = spawnMobile("yavin4", "exar_add", 0, 5108, 73, 5539, 270, 0)

			ObjectManager.withCreatureObject(pAddFour, function(fourthTime)
				fourthTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddThree, "Give up now")				
		end	
	
		if (((bossHealth <= (bossMaxHealth * 0.6)) or (bossAction <= (bossMaxAction * 0.6)) or (bossMind <= (bossMaxMind * 0.6))) and readData("exar_encounter:spawnState") == 2) then
			spatialChat(pBoss,"How you must hate me. I can feel your anger. Behold the true power of the darkside!")
			writeData("exar_encounter:spawnState", 3)
			local pAddFive = spawnMobile("yavin4", "corrupted_rancor", 0, 5100, 73, 5540, 270, 0)
			ObjectManager.withCreatureObject(pAddFive, function(fifthTime)
				fifthTime:engageCombat(pPlayer)
			end)
		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.3)) or (bossMind <= (bossMaxMind * 0.4))) and readData("exar_encounter:spawnState") == 3) then
			spatialChat(pBoss,"Come to my aid")
			writeData("exar_encounter:spawnState", 4)
			local pAddSix = spawnMobile("yavin4", "exar_add", 0, 5100, 73, 5538, 270, 0)
			ObjectManager.withCreatureObject(pAddSix, function(sixthTime)
				sixthTime:engageCombat(pPlayer)	
			end)
			spatialChat(pAddSix, "Stop them quickly!")
			local pAddSeven = spawnMobile("yavin4", "exar_add", 0, 5100, 73, 5518, 270, 0)
			ObjectManager.withCreatureObject(pAddSeven, function(seventhTime)
				seventhTime:engageCombat(pPlayer)
			end)
			spatialChat(pAddSeven, "Moving in")
		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.01)) or (bossAction <= (bossMaxAction * 0.01)) or (bossMind <= (bossMaxMind * 0.01))) and readData("exar_encounter:spawnState") == 4) then
			writeData("exar_encounter:spawnState", 5)		
			spatialChat(pBoss, "The Sith will never die!! My spirit is bound to this place forever I shall return")
			CreatureObject(pBoss):broadcastToServer("\\#7CFC00 Exar Kun has been defeated and has been laid to rest!")
		end
	end
	return 0
end

function exar_encounter:resetScreenplayStatus(pPlayer)
	writeData("exar_encounter:spawnState", 1)
	return 0
end
