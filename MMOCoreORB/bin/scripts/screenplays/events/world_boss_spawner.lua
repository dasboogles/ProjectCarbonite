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
	secondsToDespawn = 57600, --Boss will despawn after 16h if not killed
	secondsToRespawn = 86400, -- 24h time to respawn after boss has been killed/despawned
	maxRadius = 2000, --Maximum distance from spawn point to spawn boss
	
	
	bossMobileTemplates =  {"acklay_boss", "rancor_boss", "wampa_boss", "kkorrwrot_boss", "deathsting_boss"},

	screenplayName = "WorldBossSpawner",
	
}

registerScreenPlay("WorldBossSpawner", true)

function WorldBossSpawner:start()
		self:spawnMobiles()
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
	createEvent(self.secondsToDespawn * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
end

function WorldBossSpawner:notifyBossDead(pBoss, pKiller)
	if (pBoss == nil) then
		return 1
	end

	if (pKiller == nil) then
		return 1
	end

	createEvent(self.secondsToRespawn * 1000, "WorldBossSpawner", "respawnBoss", pBoss, "")
	--print("Boss was killed, initiating despawn/respawn.")
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
			print("World Boss: " .. bossTemplate .. " spawned at " .. spawnPoint[1] .. ", " .. spawnPoint[3] .. ", " .. zone) 
			CreatureObject(pBoss):broadcastToServer("Incomming Transmission: " .. bossTemplate .. " has been sighted on " .. zone) 
		end

end

function WorldBossSpawner:despawnBoss(pBoss)
	if (pBoss == nil or CreatureObject(pBoss):isDead()) then
		--print ("Despawn function triggered, but boss was nil or dead - do nothing.")
		return
	end

	if (CreatureObject(pBoss):isInCombat()) then
		createEvent(self.secondsToDespawn * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
		--print ("Boss was in combat, rescheduling despawn.")
		return		
	end

	--print("Boss was not killed, initiating despawn/respawn.")
	SceneObject(pBoss):destroyObjectFromWorld()
	createEvent(2 * 1000, "WorldBossSpawner", "respawnBoss", pNewBoss, "")
	return 1
end
