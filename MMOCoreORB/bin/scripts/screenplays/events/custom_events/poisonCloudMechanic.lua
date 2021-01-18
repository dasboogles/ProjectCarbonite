---------------------------------------------------------------------------------------------
---------------------------- Custom Poison Mechanic for Bosses ------------------------------
---------------------------------------------------------------------------------------------
-- Poison Cloud Registration
poisonGasCloudMechanic = ScreenPlay:new {
    screenplayName = "poisonGasCloudMechanic",
}

-- Registration of our Poison Mechanic so other screenplays can utilize it
registerScreenPlay("poisonGasCloudMechanic", true)

-- Setup our Poison Mechanic
function poisonGasCloudMechanic:setupMech(pMobile)
    createObserver(STARTCOMBAT, "poisonGasCloudMechanic", "setupMech", pMobile, "")
    self:spawnCloud(pMobile)
    return 1
end

-- Do Spawning of Clouds on Players near the boss
function poisonGasCloudMechanic:spawnCloud(pMobile)
    if (pMobile == nil or CreatureObject(pMobile):isDead()) then
        return 0
    end
    if CreatureObject(pMobile):isInCombat() then
        local playerTable = SceneObject(pMobile):getPlayersInRange(70)
        if playerTable == nil then
            createEvent(30 * 1000, "poisonGasCloudMechanic", "spawnCloud", pMobile, "")
            return 0
        end
        for i = 1, #playerTable, 1 do
            local pPlayer = playerTable[i]
            if (pPlayer ~= nil) then
				-- Spawning the gas cloud
                local gasCloud = spawnSceneObject(SceneObject(pPlayer):getZoneName(), "object/tangible/dungeon/poison_gas_cloud.iff", SceneObject(pPlayer):getPositionX(), SceneObject(pPlayer):getPositionZ(), SceneObject(pPlayer):getPositionY(), SceneObject(pPlayer):getParent(), 0)

                -- 30 seconds between cloud pulses to make people not want to clump up
                createEvent(30 * 1000, "poisonGasCloudMechanic", "removeObject", gasCloud, "")
                
                self:poisonCloudDamage(gasCloud)
            end
		end
		-- 30 seconds between cloud pulses to make people not want to clump up
        createEvent(30 * 1000, "poisonGasCloudMechanic", "spawnCloud", pMobile, "")
    end
    return 0
end

-- Do Cloud Damage Ticks
function poisonGasCloudMechanic:poisonCloudDamage(pObject)
    if (pObject ~= nil) then
        local playerTable = SceneObject(pObject):getPlayersInRange(6)
		if playerTable == nil then
            -- Pulses damage every 6 seconds
            createEvent(6 * 1000, "poisonGasCloudMechanic", "poisonCloudDamage", pObject, "")
            return 0
        end
        for i = 1, #playerTable, 1 do
            local pPlayer = playerTable[i]
            if (pPlayer ~= nil) then
                self:inflictPoisonDamage(pPlayer)    
            end
		end
		-- Pulses damage every 6 seconds
        createEvent(6 * 1000, "poisonGasCloudMechanic", "poisonCloudDamage", pObject, "")
    end
end

-- Remove Mechanic from world
function poisonGasCloudMechanic:removeObject(pObject)
    if (pObject ~= nil) then
        SceneObject(pObject):destroyObjectFromWorld()
    end
end

-- Do damage ticks
function poisonGasCloudMechanic:inflictPoisonDamage(pPlayer)
    if (pPlayer ~= nil) then
        CreatureObject(pPlayer):playEffect("clienteffect/dot_poisoned.cef", "")
        CreatureObject(pPlayer):inflictDamage(pPlayer, 0, 250, 1)
        CreatureObject(pPlayer):inflictDamage(pPlayer, 3, 250, 1)
        CreatureObject(pPlayer):inflictDamage(pPlayer, 6, 100, 1)
    end
end
---------------------------------------------------------------------------------------------
---------------------------- Custom Poison Mechanic for Bosses ------------------------------
---------------------------------------------------------------------------------------------