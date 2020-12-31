local ObjectManager = require("managers.object.object_manager")

ContainmentBreach = ScreenPlay:new {
    screenplayName = "tatooineContainmentBreech",
    tatooineBreaches = {
        {"tatooine", "object/tangible/dungeon/poison_gas_cloud.iff", 3315.13, 5, -4537.03, 257, 0}, -- Eisley
    },
    nabooBreaches = {
        {"naboo", "object/tangible/dungeon/poison_gas_cloud.iff", -5019.99, 6, 4302.66, 311, 0}, -- Theed
    },
    
    corelliaBreaches = {
        {"corellia", "object/tangible/dungeon/poison_gas_cloud.iff", -437.601, 28, -4580.17, 337, 0}, -- Eisley
    },
}

registerScreenPlay("ContainmentBreach", true)

-- Consider refactoring this down to be more modular in the future!
function ContainmentBreach:start()
    -- Tatooine Eisley
	if (isZoneEnabled("tatooine")) then
        self:spawnTatoineBreaches()
    end
    
    -- Naboo Theed
	if (isZoneEnabled("naboo")) then
        self:spawnNabooBreaches()
    end
    
    -- Corellia Cnet
	if (isZoneEnabled("corellia")) then
        self:spawnCorelliaBreaches()
	end
end

-- Consider refactoring this down to be more modular in the future!
function ContainmentBreach:spawnTatoineBreaches()
    local breaches = self.tatooineBreaches
    for i = 1, #breaches, 1 do
        local cb = breaches[i]
        local containmentBreach = spawnSceneObject(cb[1], cb[2], cb[3], cb[4], cb[5], cb[6], cb[7]);

        -- Check to see if it despawned
        createEvent(30 * 1000, "ContainmentBreach", "checkForPlayers", containmentBreach, "")
    end
end

-- Consider refactoring this down to be more modular in the future!
function ContainmentBreach:spawnNabooBreaches()
    local breaches = self.nabooBreaches
    for i = 1, #breaches, 1 do
        local cb = breaches[i]
        local containmentBreach = spawnSceneObject(cb[1], cb[2], cb[3], cb[4], cb[5], cb[6], cb[7]);

        -- Check to see if it despawned
        createEvent(30 * 1000, "ContainmentBreach", "checkForPlayers", containmentBreach, "")
    end
end

-- Consider refactoring this down to be more modular in the future!
function ContainmentBreach:spawnCorelliaBreaches()
    local breaches = self.corelliaBreaches
    for i = 1, #breaches, 1 do
        local cb = breaches[i]
        local containmentBreach = spawnSceneObject(cb[1], cb[2], cb[3], cb[4], cb[5], cb[6], cb[7]);

        -- Check to see if it despawned
        createEvent(30 * 1000, "ContainmentBreach", "checkForPlayers", containmentBreach, "")
    end
end

function ContainmentBreach:checkForPlayers(pObject)
    if (pObject ~= nil) then
        local playerTable = SceneObject(pObject):getPlayersInRange(12) -- anyone within 12m of the gas cloud
        if playerTable == nil then
            createEvent(30 * 1000, "ContainmentBreach", "checkForPlayers", pObject, "") -- continue checking every 30 seconds
            return 0
        end
        for i = 1, #playerTable, 1 do
            local pPlayer = playerTable[i]
            if (pPlayer ~= nil) then
                self:inflictDiseaseDamage(pPlayer)    
            end
        end
        createEvent(30 * 1000, "ContainmentBreach", "checkForPlayers", pObject, "") -- continue checking every 30 seconds
    end
end

function ContainmentBreach:inflictDiseaseDamage(pPlayer)
    if (pPlayer ~= nil) then
        CreatureObject(pPlayer):playEffect("clienteffect/dot_poisoned.cef", "")
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, HEALTH, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, CONSTITUTION, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, STAMINA, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, ACTION, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, STRENGTH, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, QUICKNESS, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, MIND, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, FOCUS, 45, 100, -1, 0)
        CreatureObject(pPlayer):addDotState(pPlayer, DISEASED, 250, WILLPOWER, 45, 100, -1, 0)
    end
end