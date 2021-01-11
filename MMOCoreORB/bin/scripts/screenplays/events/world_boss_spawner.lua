--////////////////////////////////////////
--///////////World Boss Spawner//////////	 	
--///////////////////////////////////////

local ObjectManager = require("managers.object.object_manager")
includeFile("events/world_boss_spt.lua")
--Reference from quest_spawner.lua

WorldBossSpawner = ScreenPlay:new {

	numberOfActs = 1,
	bossesToSpawn = 3, --Number of bosses to spawn
	numBosses = 5, --Number of boss mobile templates declared in table below
	numReferencePoints = 29, --Number of reference points from world_boss_spt.lua
	secondsToDespawn = 25200, --Boss will despawn after 16h if not killed -- [CHANGED]: from 57600 -> 18000 (7hrs)
	secondsToRespawn = 28800, -- 24h time to respawn after boss has been killed/despawned -- [CHANGED]: from 86400 -> 28800 (8hrs) 
	maxRadius = 2000, --Maximum distance from spawn point to spawn boss
	
	bossMobileTemplates =  {"acklay_boss", "rancor_boss", "wampa_boss", "kkorrwrot_boss", "deathsting_boss"},

	screenplayName = "WorldBossSpawner",
}

registerScreenPlay("WorldBossSpawner", true)

function WorldBossSpawner:start()
	createEvent(1800 * 1000, "WorldBossSpawner", "spawnMobiles", pBoss, "") -- waits 30minutes before running Spawner on server up
	-- self:spawnMobiles()
end

function WorldBossSpawner:spawnMobiles()
	local spawns = 1
	local pBoss

	while (spawns < self.bossesToSpawn + 1) do
		self:respawnBoss(pBoss)		
		spawns = spawns + 1
	end
end


function WorldBossSpawner:setupBoss(pBoss)
	createObserver(OBJECTDESTRUCTION, "WorldBossSpawner", "notifyBossDead", pBoss)
	-- Randomize despawn timer anywhere between +/- 30minutes
	createEvent(getRandomNumber(self.secondsToDespawn-1800, self.secondsToDespawn+1800) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
end

function WorldBossSpawner:notifyBossDead(pBoss, pKiller)
	if (pBoss == nil) then
		return 1
	end

	if (pKiller == nil) then
		return 1
	end
	-- Randomize despawn timer anywhere between +/- 30minutes
	createEvent(getRandomNumber(self.secondsToRespawn-1800, self.secondsToRespawn+1800) * 1000, "WorldBossSpawner", "respawnBoss", pBoss, "")
	--print("Boss was killed, initiating despawn/respawn.")
	local bossTemplate = self:getBossTemplate(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossTemplate ~= nil and zone ~= nil) then
		-- print("WhosaWhat: " .. SceneObject(pBoss):getObjectID())
		CreatureObject(pBoss):broadcastToServer("Incomming Transmission: " .. bossTemplate .. " has been slain on " .. zone) 
	end
	
	return 1
end

function WorldBossSpawner:respawnBoss(pOldBoss)

	local bossTemplate = self.bossMobileTemplates[getRandomNumber(1, self.numBosses)]
	local referencePoint = getRandomNumber(1, self.numReferencePoints)
	local zone = BossSpawnPoint[referencePoint].planetName
		
	if (not isZoneEnabled(zone)) then
		
		local counter = 1
			
		while (not isZoneEnabled(zone) and counter <= 11) do
			referencePoint = getRandomNumber(0, self.numReferencePoints - 1)
			zone = BossSpawnPoint[referencePoint].planetName
				
			if (counter == 11) then
				--printLuaError("Necessary zone for Boss are not enabled.")	
				return
			end
				
			counter = counter + 1
		end
	end

	local xPos = BossSpawnPoint[referencePoint].xPos
	local yPos = BossSpawnPoint[referencePoint].yPos
	local pSpawner = spawnSceneObject(zone, "object/tangible/spawning/quest_spawner.iff", xPos, 0, yPos, 0, 0)

	if (pSpawner == nil) then
		--printLuaError("QuestSpawner:createQuestSpawner, unable to create spawner object.")
		return
	end

	local spawnPoint = getSpawnPoint(zone, xPos, yPos, self.minimumDistance, self.maxRadius, false)
		
	if (spawnPoint == nil) then
			spawnPoint = { spawnerX, getTerrainHeight(pSpawner, xPos, yPos), yPos }
	end

	local pBoss = spawnMobile(zone, bossTemplate, 0, spawnPoint[1], spawnPoint[2], spawnPoint[3], getRandomNumber(360) - 180, 0)
	SceneObject(pSpawner):destroyObjectFromWorld()	

		if (pBoss ~= nil) then
			createEvent(10, "WorldBossSpawner", "setupBoss", pBoss, "")
			-- -- Spawn BigGameHunterForBossHere
			-- self:spawnBigGameHunter(pBoss, zone)

			-- -- Write what Boss belongs to what planet
			-- writeData(planet .. ":WorldBoss", pBoss:getObjectID())

			-- Tell the server the WorldBoss Spawned
			print("World Boss: " .. bossTemplate .. " spawned at " .. spawnPoint[1] .. ", " .. spawnPoint[3] .. ", " .. zone)

			-- Save needed information about this Boss for onDespawn() and onDeath() events! 
			writeStringData(SceneObject(pBoss):getObjectID() .. ":name", bossTemplate)
			writeStringData(SceneObject(pBoss):getObjectID() .. ":zone", zone)

			-- Tell the world a WorldBoss Spawned
			CreatureObject(pBoss):broadcastToServer("Incomming Transmission: " .. bossTemplate .. " has been sighted on " .. zone) 
		end

end

function WorldBossSpawner:despawnBoss(pBoss)
	if (pBoss == nil or CreatureObject(pBoss):isDead()) then
		--print ("Despawn function triggered, but boss was nil or dead - do nothing.")
		return
	end

	if (CreatureObject(pBoss):isInCombat()) then
		createEvent(getRandomNumber(self.secondsToDespawn-1800, self.secondsToDespawn+1800) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
		--print ("Boss was in combat, rescheduling despawn.")
		return		
	end

	--print("Boss was not killed, initiating despawn/respawn.")
	local bossTemplate = self:getBossTemplate(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossTemplate ~= nil and zone ~= nil) then
		CreatureObject(pBoss):broadcastToServer("Incomming Transmission: " .. bossTemplate .. " has gone back into hiding on " .. zone) 
	end

	SceneObject(pBoss):destroyObjectFromWorld()
	createEvent(2 * 1000, "WorldBossSpawner", "respawnBoss", pNewBoss, "")
	return 1
end

-- We want to get the Boss's template so we can broadcast stuff!
function WorldBossSpawner:getBossTemplate(pBoss)
	-- print("Get boss template example: " .. SceneObject(pBoss):getObjectID() .. ":name")
	local bossName = readStringData(SceneObject(pBoss):getObjectID() .. ":name")
	-- print("Get boss template name READ: " .. bossName)
	return bossName
end

-- We want to get the Boss's zone so we can broadcast stuff!
function WorldBossSpawner:getBossZone(pBoss)
	local bossZone = readStringData(SceneObject(pBoss):getObjectID() .. ":zone")
	return bossZone
end

-- -- Spawn our BigGameHunters on their respective planets
-- function WorldBossSpawner:spawnBigGameHunter(pBoss, planet) {
-- 	if (pBoss ~= nil or CreatureObject(pBoss):isDead() == false) then
-- 		for i = 1, #BigGameHunterSpawns, 1 do
-- 			local bghSpawn = BigGameHunterSpawns[i]
-- 			if (bghSpawn[1] == planet) {
-- 				local pBGH = spawnMobile(bghSpawn[1], bghSpawn[2], bghSpawn[3], spawnPoint[1], spawnPoint[2], spawnPoint[3], spawnPoint[4], spawnPoint[5], spawnPoint[6], spawnPoint[7], spawnPoint[8])
-- 				-- Write the unique object ID of our planet's BGA
-- 				-- We will be able to get this unique BGA based on the known planet of our current boss
-- 				writeData(planet .. ":bigGameHunter", pBGH:getObjectID())
-- 			}
-- 		end
-- 	end
-- }

-- function WorldBossSpawner:despawnBigGameHunter(pBGH)
-- end