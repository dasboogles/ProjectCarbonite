--////////////////////////////////////////
--///////////World Boss Spawner//////////	 	
--///////////////////////////////////////

local ObjectManager = require("managers.object.object_manager")
includeFile("events/world_boss_spt.lua")
--Reference from quest_spawner.lua

WorldBossSpawner = ScreenPlay:new {

	numberOfActs = 1,
	bossesToSpawn = 3, --Number of bosses to spawn
	initSpawnTimer = 900, -- Default spawn time on server-up // Default is 900
	numReferencePoints = 29, --Number of reference points from world_boss_spt.lua
	secondsToDespawn = 18000, --25200, --Boss will despawn after 16h if not killed -- [CHANGED]: from 57600 -> 18000 (5hrs)
	secondsToRespawn = 21600, -- 24h time to respawn after boss has been killed/despawned -- [CHANGED]: from 86400 -> 21600 (6hrs) 
	maxRadius = 2000, --Maximum distance from spawn point to spawn boss
	randomVariance = 1800, -- +/- 1 hour onto despawn and respawn timers // 1800 is default
	-- Acklay has a AreaPoison
	-- Rancor has a AreaDisease
	-- Wampa, Kkorrwrot, and DeathString now have unique mechanics
	bossMobileTemplates =  {
		{template = "acklay_boss", name = "Corrupted Acklay"}, 
		{template = "rancor_boss", name = "Twisted Rancor"},
		{template = "wampa_boss", name = "Wampa"},
		{template = "kkorrwrot_boss", name = "Kkorrwrot"},
		{template = "deathsting_boss", name = "Deathsting"},
	},

	screenplayName = "WorldBossSpawner",
}

registerScreenPlay("WorldBossSpawner", true)

function WorldBossSpawner:start()
	createEvent(self.initSpawnTimer * 1000, "WorldBossSpawner", "spawnMobiles", pBoss, "") -- waits 15minutes before running Spawner on server up
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
	createEvent(getRandomNumber(self.secondsToDespawn - self.randomVariance, self.secondsToDespawn + self.randomVariance) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
end

function WorldBossSpawner:notifyBossDead(pBoss, pKiller)
	if (pBoss == nil) then
		return 1
	end

	if (pKiller == nil) then
		return 1
	end
	-- Randomize despawn timer anywhere between +/- 30minutes
	createEvent(getRandomNumber(self.secondsToRespawn - self.randomVariance, self.secondsToRespawn + self.randomVariance) * 1000, "WorldBossSpawner", "respawnBoss", pBoss, "")
	print("Boss was killed, initiating respawn.")
	local bossName = self:getBossName(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossName ~= nil and zone ~= nil) then
		-- print("WhosaWhat: " .. SceneObject(pBoss):getObjectID())
		CreatureObject(pBoss):broadcastToServer("\\#6699ff <Incomming Transmission> \n\n \\#ffff99" .. bossName .. " \\#ff9966 has been slain on " .. zone) 

		-- Clean up data from memory upon boss death
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")
		-- Check array of planetaryBosses for our boss's data
		for i = 1, self.bossesToSpawn, 1 do
			local checkBossPlanetData = readData(zone .. ":" .. i)
			if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
				-- print("Boss is dead on " .. zone .. " so I'm deleting data for this boss!")
				deleteData(zone .. ":" .. i)
				break
			end
		end
	end
	
	return 1
end

function WorldBossSpawner:respawnBoss(pOldBoss)

	local bossObject = self.bossMobileTemplates[getRandomNumber(1, #self.bossMobileTemplates)]
	local bossTemplate = bossObject.template
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
			local mechanicType = ""

			-- Define mechanics based on template
			if (bossTemplate == "deathsting_boss") then
				mechanicType = "poisonGasCloudMechanic"
			elseif (bossTemplate == "wampa_boss" or bossTemplate == "kkorrwrot_boss") then
				mechanicType = "coldFieldMechanic"
			end

			createObserver(STARTCOMBAT, mechanicType, "setupMech", pBoss, "")
			createEvent(30, "WorldBossSpawner", "setupBoss", pBoss, "")

			-- -- Spawn BigGameHunterForBossHere
			self:spawnBigGameHunter(pBoss, zone)

			-- Tell the server the WorldBoss Spawned
			print("World Boss: " .. bossObject.name .. " spawned at " .. spawnPoint[1] .. ", " .. spawnPoint[3] .. ", " .. zone)

			-- Save needed information about this Boss for onDespawn() and onDeath() events! 
			writeStringData(SceneObject(pBoss):getObjectID() .. ":name", bossObject.name)
			writeStringData(SceneObject(pBoss):getObjectID() .. ":zone", zone)

			-- self.bossesToSpawn
			for i = 1, self.bossesToSpawn, 1 do
				if (readData(zone .. ":" .. i) == nil or readData(zone .. ":" .. i) == 0) then
					-- print("Boss is spawned on " .. zone .. " so I'm creating data for this boss!")
					writeData(zone .. ":" .. i, SceneObject(pBoss):getObjectID())
					break
				end
			end

			-- Tell the world a WorldBoss Spawned
			CreatureObject(pBoss):broadcastToServer("\\#6699ff <Incomming Transmission> \n\n ".." a \\#ffff99" .. bossObject.name .. " \\#66ff99 has been sighted on " .. zone) 
		end

end

function WorldBossSpawner:despawnBoss(pBoss)
	-- Boss vanished?
	if (pBoss == nil) then
		--print ("Despawn function triggered, but boss was nil - do nothing.")
		-- Do Nothing
		return
	end

	-- Boss is Dead?
	if (CreatureObject(pBoss):isDead()) then
		--print ("Despawn function triggered, but boss was dead - do nothing.")
		-- Clean up our data from memory once a boss has been killed
		local bossZone = readStringData(SceneObject(pBoss):getObjectID() .. ":zone")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
		deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")

		-- Find our boss's planetary data
		for i = 1, self.bossesToSpawn, 1 do
			local checkBossPlanetData = readData(bossZone .. ":" .. i)
			if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
				-- print("Boss is dead or despawned on " .. bossZone .. " so I'm deleting this boss's data")
				deleteData(bossZone .. ":" .. i)
				break
			end
		end
		return
	end

	-- Boss is being hunted?
	if (CreatureObject(pBoss):isInCombat()) then
		createEvent(getRandomNumber(self.secondsToDespawn - self.randomVariance, self.secondsToDespawn + self.randomVariance) * 1000, "WorldBossSpawner", "despawnBoss", pBoss, "")
		--print ("Boss was in combat, rescheduling despawn.")
		return		
	end

	-- print("//////////////////////////////")
	print("Boss was not killed, initiating despawn/respawn.")
	
	local bossName = self:getBossName(pBoss)
	local zone = self:getBossZone(pBoss)

	if (bossName ~= nil and zone ~= nil) then
		CreatureObject(pBoss):broadcastToServer("\\#6699ff <Incomming Transmission> \n\n \\#ffff99" .. bossName .. " \\#ffccff has gone back into hiding on " .. zone) 
	end

	

	-- Find our boss's planetary data
	for i = 1, self.bossesToSpawn, 1 do
		local checkBossPlanetData = readData(zone .. ":" .. i)
		if (checkBossPlanetData ~= nil and checkBossPlanetData == SceneObject(pBoss):getObjectID()) then
			-- print("Boss is despawned on " .. zone .. " so I'm deleting this boss's data")
			deleteData(zone .. ":" .. i)
			break
		end
	end

	-- Despawn boss from the world
	SceneObject(pBoss):destroyObjectFromWorld()

	-- Cleanup of memory once a boss despawns
	deleteStringData(SceneObject(pBoss):getObjectID() .. ":name")
	deleteStringData(SceneObject(pBoss):getObjectID() .. ":zone")

	-- Schedule new Respawn task
	createEvent(2 * 1000, "WorldBossSpawner", "respawnBoss", pNewBoss, "")
	-- print("//////////////////////////////")
	return 1
end

-- We want to get the Boss's template so we can broadcast stuff!
function WorldBossSpawner:getBossName(pBoss)
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

-- Spawn our BigGameHunters on their respective planets
function WorldBossSpawner:spawnBigGameHunter(pBoss, planet)
	if (pBoss ~= nil or CreatureObject(pBoss):isDead() == false) then
		for i = 1, #BigGameHunterSpawns, 1 do
			local bghSpawn = BigGameHunterSpawns[i]
			if (bghSpawn[1] == planet) then
				-- local pBGH = spawnMobile(bghSpawn[1], bghSpawn[2], bghSpawn[3], bghSpawn[4], bghSpawn[5], bghSpawn[6], bghSpawn[7], bghSpawn[8])

				-- We only want 1 BGH per planet, even if multiple bosses exist on said planet
				if (readData(planet .. ":bghPlanet") == 0) then
					local pBGH = spawnMobile(bghSpawn[1], bghSpawn[2], bghSpawn[3], bghSpawn[4], bghSpawn[5], bghSpawn[6], bghSpawn[7], bghSpawn[8])
					if (pBGH ~= nil) then
						-- print("No BGH exists on " .. planet .. " so I'm creating data for them! ID: " .. SceneObject(pBGH):getObjectID())
						writeData(planet .. ":bghPlanet", SceneObject(pBGH):getObjectID())
						writeStringData(SceneObject(pBGH):getObjectID() .. ":bghPlanet", planet)
						-- Start our despawn event, highly doubt a target will die in under 10 minutes
						createEvent(60 * 1000, "WorldBossSpawner", "despawnBigGameHunter", pBGH, "")
					end
				end
			end
		end
	end
end

function WorldBossSpawner:despawnBigGameHunter(pBGH)
	if (pBGH ~= nil) then
		local BGHPlanet = readStringData(SceneObject(pBGH):getObjectID() .. ":bghPlanet")

		for i = 1, self.bossesToSpawn, 1 do
			local checkBossPlanetData = readData(BGHPlanet .. ":" .. i)
			if (checkBossPlanetData ~= nil and checkBossPlanetData ~= 0) then
				-- print("A boss still exists on " .. BGHPlanet .. " rescheduling despawn task for BGH")
				-- At least ONE boss exists on our current planet, reschedule to check again
				createEvent(30 * 1000, "WorldBossSpawner", "despawnBigGameHunter", pBGH, "")
				return
			end
		end

		-- No bosses exist on our current planet, destroy all our data for this BGH!
		-- print("A boss does not exist on " .. BGHPlanet .. " cleaning up this BGH's data")
		deleteData(BGHPlanet .. ":bghPlanet")
		deleteStringData(SceneObject(pBGH):getObjectID() .. ":bghPlanet")
		SceneObject(pBGH):destroyObjectFromWorld()
	end
end