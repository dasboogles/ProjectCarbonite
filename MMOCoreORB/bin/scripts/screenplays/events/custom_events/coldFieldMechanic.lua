---------------------------------------------------------------------------------------------
---------------------------- Custom Cold Mechanic for Bosses ------------------------------
---------------------------------------------------------------------------------------------
-- Cold Cloud Registration
coldFieldMechanic = ScreenPlay:new {
    screenplayName = "coldFieldMechanic",
}

-- Registration of our Cold Mechanic so other screenplays can utilize it
registerScreenPlay("coldFieldMechanic", true)

-- Setup our Cold Mechanic
function coldFieldMechanic:setupMech(pMobile)
    createObserver(STARTCOMBAT, "coldFieldMechanic", "setupMech", pMobile, "")
    -- MUST BE A CREATURE
    self:pulseColdCloudDamage(pMobile)
    self:loopEffect(pMobile) 
    return 1
end

-- Do AOE Ice Field Damage Ticks on everyone within 70m of boss
function coldFieldMechanic:pulseColdCloudDamage(pObject)
    if (pObject ~= nil and not CreatureObject(pObject):isDead() and CreatureObject(pObject):isInCombat()) then
        local playerTable = SceneObject(pObject):getPlayersInRange(70)
		if playerTable == nil then
			-- Pulses damage every 3 seconds
            createEvent(3 * 1000, "coldFieldMechanic", "pulseColdCloudDamage", pObject, "")
            return 0
        end
        for i = 1, #playerTable, 1 do
            local pPlayer = playerTable[i]
            if (pPlayer ~= nil) then
                self:inflictcoldDamage(pPlayer)    
            end
		end
		-- Pulses damage every 3 seconds
        createEvent(3 * 1000, "coldFieldMechanic", "pulseColdCloudDamage", pObject, "")
    end
end

-- Do damage ticks
function coldFieldMechanic:inflictcoldDamage(pPlayer)
    if (pPlayer ~= nil) then
        CreatureObject(pPlayer):playEffect("clienteffect/droid_effect_dry_ice.cef", "")
        CreatureObject(pPlayer):inflictDamage(pPlayer, 0, 125, 1) -- Health
        CreatureObject(pPlayer):inflictDamage(pPlayer, 3, 125, 1) -- Action
        CreatureObject(pPlayer):inflictDamage(pPlayer, 6, 75, 1) -- Mind
        CreatureObject(pPlayer):sendSystemMessage("You're freezing!!!")
    end
end
---------------------------------------------------------------------------------------------
---------------------------- Custom Cold Mechanic for Bosses ------------------------------
---------------------------------------------------------------------------------------------

--------------------------------------------------------------------
------------------------ OTHER EFFECTS WORK ------------------------
function coldFieldMechanic:loopEffect(pObject)
    if (pObject ~= nil and not CreatureObject(pObject):isDead() and CreatureObject(pObject):isInCombat()) then
        -- Really cool lightning effect, use this for something mechanical later?
        SceneObject(pObject):playEffect("clienteffect/combat_pt_electricalfield.cef", "")
        createEvent(9 * 1000, "coldFieldMechanic", "loopEffect", pObject, "")
    end
end
------------------------ OTHER EFFECTS WORK ------------------------
--------------------------------------------------------------------