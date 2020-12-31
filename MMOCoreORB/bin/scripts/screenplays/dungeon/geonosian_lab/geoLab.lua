local ObjectManager = require("managers.object.object_manager")

GeonosianLab = ScreenPlay:new {
	keypadCodes = { 32281, 12872, 51892, 12753, 86332, 11380, 52577, 78660 },
	lockedCells = { 1627785, 1627786, 1627790, 1627805, 1627812, 1627815, 1627822, 1627823 },

	trapLocs = {
		{ "object/tangible/theme_park/invisible_object.iff", -0.25, 1.86, -26.1, 1627783 }, -- hall2
		{ "object/tangible/theme_park/invisible_object.iff", 35, -34, -336.65, 1627822 }, -- grandcageroom
		{ "object/tangible/theme_park/invisible_object.iff", -127.6, -34, -250.8, 1627813 }, -- intersection6
		{ "object/tangible/dungeon/trash_container.iff", -131.9, -20.24, -72, 1627794 } -- largecavehall2
	},

	trapTerminals = {
		{
			-- poison in hall2
			{ "object/tangible/dungeon/wall_terminal_s1.iff", 29.89, 9.68, -8.53, 1627782, 180 }, -- hall1
			{ "object/tangible/dungeon/wall_terminal_s1.iff", 1.9, -2.28, -15.34, 1627824, 270 } -- spiralhallway
		},
		{
			-- poison in grandcageroom
			{ "object/tangible/dungeon/chemical_storage.iff", 8.08, -22, -332, 1627822, 180 } -- grandcageroom
		},
		{ -- electric trap in intersection6
			{ "object/tangible/dungeon/wall_terminal_s1.iff", -122.5, -34, -182.8, 1627815, 270 }, -- operatingroom2
			{ "object/tangible/dungeon/wall_terminal_s1.iff", -122.11, -34, -266.7, 1627816, 180 } -- transition9
		},
		{ -- trash container in largecavehall2
			{ "object/tangible/dungeon/wall_terminal_s2.iff", -136.73, -21.29, -84.72, 1627794, 90 }
		}
	},

	keypads = {
		{ x = -34, z = -18, y = -31, cell = 1627784, dw = 0.707107, dx = 0, dy = 0.707107, dz = 0, code = 32281, locked = 1627785 },
		{ x = -47, z = -18, y = -56, cell = 1627785, dw = 1, dx = 0, dy = 0, dz = 0, code = 12872, locked = 1627786 },
		{ x = -105, z = -18, y = -64, cell = 1627789, dw = 0, dx = 0, dy = -1, dz = 0, code = 51892, locked = 1627990 },
		{ x = -79, z = -22, y = -146, cell = 1627804, dw = 1, dx = 0, dy = 0, dz = 0, code = 12753, locked = 1627805 },
		{ x = -67, z = -34, y = -260, cell = 1627811, dw = 1, dx = 0, dy = 0, dz = 0, code = 86332, locked = 1627812 },
		{ x = -133, z = -34, y = -204, cell = 1627814, dw = 0, dx = 0, dy = -1, dz = 0, code = 11380, locked = 1627815 },
		{ x = -4, z = -34, y = -417, cell = 1627821, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0, code = 52577, locked = 1627822 },
		{ x = 38, z = -34, y = -333, cell = 1627822, dw = 0.707107, dx = 0, dy = -0.707107, dz = 0, code = 78660, locked = 1627823 }
	},

	doorActiveAreas = {
		{ worldX = -6404.5, worldZ = 64.3, worldY = -412.4, cell = 1627784 },
		{ worldX = -6376.5, worldZ = 64.3, worldY = -413.6, cell = 1627785 },
		{ worldX = -6338.8, worldZ = 64.3, worldY = -457.9, cell = 1627789 },
		{ worldX = -6284.8, worldZ = 60.3, worldY = -392.6, cell = 1627804 },
		{ worldX = -6193.3, worldZ = 48.3, worldY = -324.1, cell = 1627811 },
		{ worldX = -6204.7, worldZ = 48.3, worldY = -410.2, cell = 1627814 },
		{ worldX = -6089.5, worldZ = 48.3, worldY = -191.4, cell = 1627821 },
		{ worldX = -6181.5, worldZ = 48.3, worldY = -196.5, cell = 1627822 },
	},

	-- { x, z, y, cell, rot, overrideLootTemplate }
	lootContainers = {
		{ -53.2, -18, 1627785, -36.6, 0, "" },
		{ -44.55, -18, 1627785, -43, -90, "" },
		{ -43, -18, -55.7, 1627785, 0, "" },
		{ -74.8, -22, -152.4, 1627805, 180, "" },
		{ -70.15, -34, -262.5, 1627812, 180, "" },
		{ -140.1, -34, -201.5, 1627815, 0, "object/tangible/dungeon/poison_stabilizer.iff" }
	},

	debrisLocs = {
		{ template = "object/static/destructible/destructible_cave_wall_damprock.iff", x = -102, z = -31.4, y = -368, rot = 0, cell = 1627818 }, -- cavecages3
		{ template = "object/static/destructible/destructible_tato_drum_dented.iff", x = 37.8, z = -34, y = -333.5, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_dented.iff", x = 37.29, z = -34, y = -334.5, rot = 90, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_dented.iff", x = 37.29, z = -34, y = -335.56, rot = 180, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 32.11, z = -24, y = -335.58, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 32.85, z = -24, y = -335.12, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 33.84, z = -24, y = -334.96, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 34.54, z = -24, y = -335.47, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 35.57, z = -24, y = -335.06, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_drum_storage1.iff", x = 35.18, z = -24, y = -334.29, rot = 0, cell = 1627822 }, -- grandcageroom
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -111, z = -33.73, y = -228.31, rot = 0, cell = 1627809 }, -- intersection5
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -109.5, z = -33.31, y = -227.5, rot = 115, cell = 1627809 }, -- intersection5
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -113, z = -33.42, y = -229.2, rot = 48, cell = 1627809 }, -- intersection5
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -78.37, z = -22.06, y = -111.87, rot = 180, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -78.33, z = -21.56, y = -110.49, rot = 90, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_lg.iff", x = -78.18, z = -21.75, y = -109.46, rot = 55, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -76.57, z = -21.92, y = -112.14, rot = 64, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -76.61, z = -21.96, y = -111.16, rot = 16, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -76.86, z = -22.03, y = -110.16, rot = 3, cell = 1627793 }, -- largecavehall1
		{ template = "object/static/destructible/destructible_tato_cave_rock_med.iff", x = -76.9, z = -22.06, y = -109.21, rot = 22, cell = 1627793 } -- largecavehall1
	},

	-- HiggJibb variables
	hjHallucinations = {
		{ 7.01894, -34, -396.991, 59, 1627822 },
		{ 17.2352, -34, -400.67, 358, 1627822 },
		{ 26.087, -34, -398.248, 340, 1627822 },
		{ 22.4104, -34, -389.604, 333, 1627822 },
		{ 13.5992, -34, -389.386, 357, 1627822 },
		{ 21.3341, -34, -374.7, 333, 1627822 },
		{ 12.5003, -34, -369.561, 3, 1627822 },
		{ 22.1534, -34, -356.706, 11, 1627822 },
		{ 24.8725, -34, -346.4, 259, 1627822 },
		{ 14.426, -34, -347.39, 245, 1627822 },
		{ 11.1598, -34, -352.626, 293, 1627822 },
	},
	addPhaseName = "hjPhaseAdd",
	totalAdds = 20,
	isResetting = false
}

registerScreenPlay("GeonosianLab", true)

function GeonosianLab:start()
	if (isZoneEnabled("yavin4")) then
		if (self:setupBuilding()) then
			self:setupTrap()
			self:spawnSceneObjects()
			self:spawnMobiles()
			self:setupPermissionGroups()
			self:setupLootContainers()
			self:setupHiggJibbEncounter()
		end
	end
end

function GeonosianLab:setupBuilding()
	local pBuilding = getSceneObject(1627780) -- Geo lab building

	if (pBuilding == nil) then
		return false
	end

	createObserver(EXITEDBUILDING, "GeonosianLab", "notifyExitedBunker", pBuilding)
	createObserver(ENTEREDBUILDING, "GeonosianLab", "notifyEnteredBunker", pBuilding)

	return true
end

function GeonosianLab:setupLootContainers()
	for i = 1, #self.lootContainers, 1 do
		local lootInfo = self.lootContainers[i]

		local pContainer = spawnSceneObject("yavin4", "object/tangible/container/loot/placable_loot_crate_tech_armoire.iff", lootInfo[1], lootInfo[2], lootInfo[3], lootInfo[4], math.rad(lootInfo[5]))

		if (pContainer ~= nil) then
			writeData(SceneObject(pContainer):getObjectID() .. ":containerNum", i)
			self:createContainerLoot(pContainer)
		end
	end
end

function GeonosianLab:createContainerLoot(pContainer)
	if (pContainer == nil) then
		return
	end

	local containerNum = readData(SceneObject(pContainer):getObjectID() .. ":containerNum")

	if (containerNum == 0) then
		return
	end

	local lootInfo = self.lootContainers[containerNum]
	local lootTemplate = lootInfo[6]

	if (lootTemplate == "") then
		createLoot(pContainer, "geonosian_loot_container", 200, true)
	else
		giveItem(pContainer, lootTemplate, -1)
	end

	createObserver(CONTAINERCONTENTSCHANGED, "GeonosianLab", "notifyContainerLooted", pContainer)
end

function GeonosianLab:notifyContainerLooted(pContainer, pLooter)
	if pItem == nil or pLooter == nil or not SceneObject(pLooter):isCreatureObject() then
		return 1
	end

	createEvent(600 * 1000, "GeonosianLab", "createContainerLoot", pContainer, "")

	return 1
end

function GeonosianLab:setupTrap()
	for i = 1, #self.trapLocs, 1 do
		local trapLoc = self.trapLocs[i]
		local pTrap = spawnSceneObject("yavin4", trapLoc[1], trapLoc[2], trapLoc[3], trapLoc[4], trapLoc[5], 0, 0, 0, 0)

		if (pTrap == nil) then
			return
		end

		if (trapLoc[1] == "object/tangible/dungeon/trash_container.iff") then
			SceneObject(pTrap):setContainerInheritPermissionsFromParent(false)
			SceneObject(pTrap):clearContainerDefaultAllowPermission(OPEN + MOVEOUT)
			SceneObject(pTrap):setContainerDefaultDenyPermission(OPEN + MOVEOUT)
			SceneObject(pTrap):setObjectMenuComponent("GeoLabTrashContainerMenuComponent")
			writeData("geoLab:trashContainerLoot", 1)
		end

		local trapID = SceneObject(pTrap):getObjectID()
		writeData("geoLab:trapIndex" .. i, trapID)
		writeData(trapID .. ":trapIndex", i)

		local	pArea = spawnActiveArea("yavin4", "object/active_area.iff", SceneObject(pTrap):getWorldPositionX(), SceneObject(pTrap):getWorldPositionZ(), SceneObject(pTrap):getWorldPositionY(), 4, SceneObject(pTrap):getParentID())

		if pArea == nil then
			return
		end

		createObserver(ENTEREDAREA, "GeonosianLab", "enteredTrapArea", pArea)
		writeData(SceneObject(pArea):getObjectID() .. ":trapIndex", i)

		local terminalLocs = self.trapTerminals[i]

		for j = 1, #terminalLocs, 1 do
			local termLoc = terminalLocs[j]
			local pTerminal = spawnSceneObject("yavin4", termLoc[1], termLoc[2], termLoc[3], termLoc[4], termLoc[5], math.rad(termLoc[6]))

			if pTerminal == nil then
				return
			end

			if (termLoc[1] == "object/tangible/dungeon/chemical_storage.iff") then
				SceneObject(pTerminal):setContainerComponent("GeoLabChemicalStorageComponent")
				SceneObject(pTerminal):setContainerInheritPermissionsFromParent(false)
				SceneObject(pTerminal):clearContainerDefaultDenyPermission(OPEN)
				SceneObject(pTerminal):setContainerDefaultAllowPermission(MOVEIN + OPEN)
			else
				SceneObject(pTerminal):setObjectMenuComponent("GeoLabTrapTerminalMenuComponent")

				if (i == 3) then
					SceneObject(pTerminal):setCustomObjectName("Electrical Power Switch")
				end
			end

			writeData(SceneObject(pTerminal):getObjectID() .. ":trapIndex", i)
		end

		self:turnOnTrap(pTrap)
	end
end

function GeonosianLab:spawnSceneObjects()
	--Keypads
	for i = 1, #self.keypads, 1 do
		local kp = self.keypads[i]
		local pSceneObject = spawnSceneObject("yavin4", "object/tangible/terminal/terminal_geo_bunker.iff", kp.x, kp.z, kp.y, kp.cell, kp.dw, kp.dx, kp.dy, kp.dz)

		if (pSceneObject ~= nil) then
			writeData(SceneObject(pSceneObject):getObjectID() .. ":geonosianLab:keypadIndex", i)
			SceneObject(pSceneObject):setObjectMenuComponent("GeoLabKeypadMenuComponent")
			createObserver(SLICED, "GeonosianLab", "notifyKeypadSliced", pSceneObject)
		end

		local aa = self.doorActiveAreas[i]
		local pActiveArea = spawnActiveArea("yavin4", "object/active_area.iff", aa.worldX, aa.worldZ, aa.worldY, 4, aa.cell)

		if pActiveArea ~= nil then
			writeData(SceneObject(pActiveArea):getObjectID() .. ":geonosianLab:keypadIndex", i)
			createObserver(ENTEREDAREA, "GeonosianLab", "notifyLockedDoorArea", pActiveArea)
		end
	end

	for i = 1, #self.debrisLocs, 1 do
		local debrisData = self.debrisLocs[i]

		local pDebris = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, math.rad(debrisData.rot))

		if (pDebris ~= nil) then
			writeData(SceneObject(pDebris):getObjectID() .. ":geonosianLab:debrisIndex", i)
			createObserver(OBJECTDESTRUCTION, "GeonosianLab", "notifyDebrisDestroyed", pDebris)
		end
	end
end

function GeonosianLab:spawnMobiles()
	-- cave_entrance (1627781)
	spawnMobile("yavin4", "biogenic_crazyguy", 1, -2.8, 10.8, 10.2, 69, 1627781)

	-- hall1 (1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,26.6,10.3,-13.3,-8,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,32.3,9.5,-8.1,-105,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,34.7,10.3,-14.4,-70,1627782)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,37.4,9.8,-8.2,-109,1627782)

	-- hall2 (1627783)

	-- transition1 (1627784)
	spawnMobile("yavin4", "alert_droideka", 500,-18,-18,-36,0,1627784)

	-- assistant_armory (1627785)
	spawnMobile("yavin4", "biogenic_securitytech", 1, -48, -18, -31, 180, 1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-55.9,-18,-33.9,95,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-55.6,-18,-43.2,72,1627785)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-38.7,-18,-47.5,-75,1627785)

	-- transition2 (1627786)
	spawnMobile("yavin4", "alert_droideka", 500,-62,-18,-59.5,-180,1627786)

	-- intersection1 (1627787)

	-- caveroom1 (1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-66.7,-19,-41.2,-77,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-70.5,-18.9,-34.5,-161,1627788)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-83.9,-18.5,-42.3,85,1627788)

	-- transition3 (1627789)
	spawnMobile("yavin4", "alert_droideka", 500,-90.5,-18,-76,0,1627789)

	-- lab1 (1627790)
	spawnMobile("yavin4", "biogenic_engineertech", 1,-106.5,-18,-33,50,1627790)
	spawnMobile("yavin4", "geonosian_scientist", 500,-118.4,-20,-39.2,175,1627790)

	-- hall3 (1627791)
	spawnMobile("yavin4", "alert_droideka", 500,-53.5,-18.2,-81.7,-90,1627791)

	-- intersection2 (1627792)

	-- largecavehall1 (1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-88.3,-21.8,-110.3,210,1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-98,-21.9,-114.7,50,1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-107.3,-22.2,-96.6,180,1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-108,-21.8,-126,0,1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-123,-22,-109.5,80,1627793)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-134.7,-20.9,-112.2,77,1627793)

	-- largecavehall2 (1627794)
	spawnMobile("yavin4", "biogenic_construction", 1, -134.5, -21.7, -74.8, 90, 1627794)
	spawnMobile("yavin4", "enhanced_gaping_spider", 1800,-130,-22.1,-85,-180,1627794, true) -- Randomized respawn

	-- hall4 (1627795)

	-- intersection3 (1627796)
	spawnMobile("yavin4", "alert_droideka", 500,-3.8,-30.2,-92,-180,1627796)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-16.8,-30.2,-115.1,22,1627796)

	-- hall5 (1627797)

	-- caveroom2 (1627798)
	spawnMobile("yavin4", "biogenic_scientist_human", 1, 23.8, -32, -83.2, 130, 1627798)
	spawnMobile("yavin4", "enhanced_kliknik", 500,26,-31.5,-78,170,1627798)
	spawnMobile("yavin4", "enhanced_kliknik", 500,36.5,-29.9,-82.7,-120,1627798)
	spawnMobile("yavin4", "enhanced_kliknik", 500,29.5,-30.1,-88,-45,1627798)

	-- hall6 (1627799)

	-- intersection4 (1627800)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-48,-21.8,-158,0,1627800)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-48,-21.8,-143,0,1627800)

	-- transition4 (1627801)
	spawnMobile("yavin4", "alert_droideka", 500,-34.2,-22,-128,-180,1627801)

	-- bedroom (1627802)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-23,-22,-116,-90,1627802)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-16.4,-22,-114.5,-150,1627802)

	-- cavecage1 (1627803)
	spawnMobile("yavin4", "biogenic_assistant", 1, -36, -21.9, -162.8, 0, 1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-36,-22,-151.4,180,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-26.8,-22.9,-158,-90,1627803)
	spawnMobile("yavin4", "crazed_geonosian_guard", 500,-19.4,-22.6,-151.7,-135,1627803)

	-- transition5 (1627804)
	spawnMobile("yavin4", "alert_droideka", 500,-63.9,-22.0,-143.0,-3,1627804)

	-- office (1627805)
	spawnMobile("yavin4", "mercenary_sentry", 500,-74.9,-22,-153.7,-119,1627805)
	spawnMobile("yavin4", "mercenary_sentry", 500,-74.3,-22,-162.3,-40,1627805)
	spawnMobile("yavin4", "mercenary_sentry", 500,-82.3,-22,-161.7,74,1627805)
	spawnMobile("yavin4", "mercenary_sentry", 500,-82.2,-22,-155.1,106,1627805)

	-- hall7 (1627806)

	-- hall8 (1627807)
	spawnMobile("yavin4", "enhanced_kwi", 500,-104.2,-28.7,-193.4,0,1627807)

	-- transition6 (1627808)
	spawnMobile("yavin4", "alert_droideka", 500,-108,-34,-214,89,1627808)

	-- intersection5 (1627809)

	-- hall9 (1627810)

	-- transition7 (1627811)
	spawnMobile("yavin4", "alert_droideka", 500,-61.5,-34,-252,-90,1627811)

	-- operatingroom1 (1627812)
	spawnMobile("yavin4", "biogenic_scientist_generic_01", 1, -72.0, -34, -272.9, 0, 1627812)
	spawnMobile("yavin4", "geonosian_scientist", 500,-60.0,-34.0,-273.7,0,1627812)

	-- intersection6 (1627813)

	-- transition8 (1627814)

	-- operatingroom2 (1627815)
	spawnMobile("yavin4", "biogenic_scientist_generic_02", 1, -127.2, -34, -189.0, -93, 1627815)
	spawnMobile("yavin4", "enhanced_kwi", 500,-143.2,-34,-180.8,-139,1627815)
	spawnMobile("yavin4", "enhanced_kliknik", 500,-129.0,-34,-192.6,-32,1627815)
	spawnMobile("yavin4", "geonosian_scientist", 500,-124.3,-34.0,-199.5,-60,1627815)
	spawnMobile("yavin4", "enhanced_kliknik", 500,-139.8,-34,-194.3,57,1627815)

	-- transition9 (1627816)
	spawnMobile("yavin4", "alert_droideka", 500,-129.8,-34.0,-267.9,87,1627816)

	-- cavecages2 (1627817)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-128.2,-34.4,-322.4,-30,1627817)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-143.5,-33.5,-321.7,134,1627817)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-131.1,-33.9,-339.0,145,1627817)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-135.5,-33.8,-342.8,-1,1627817)

	-- cavecages3 (1627818)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-118.9,-34.0,-349.2,-98,1627818)
	spawnMobile("yavin4", "geo_cavern_spider", 500,-134.5,-34.0,-373.2,-2,1627818)
	spawnMobile("yavin4", "enhanced_kliknik", 500,-129.4,-33.6,-384.1,-2,1627818)

	-- cavecages4 (1627819)
	spawnMobile("yavin4", "enhanced_kliknik", 500,-87,-34.1,-386.5,210,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-86.5,-33.9,-372.8,-91,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-88.0,-34.6,-365.9,-102,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-71.5,-34,-348.1,-95,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-72.6,-33.8,-376.0,-168,1627819)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-72.7,-34.2,-382.5,-179,1627819)

	-- largecavehall3 (1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-69.0,-34.0,-407.2,-7,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-46.8,-34.0,-407.5,92,1627820)
	spawnMobile("yavin4", "enhanced_force_kliknik", 500,-28.5,-34.2,-408.4,-27,1627820)

	-- transition10 (1627821)
	spawnMobile("yavin4", "alert_droideka", 500,-11.9,-34.0,-412.5,179,1627821)

	-- grandcageroom (1627822)
	spawnMobile("yavin4", "biogenic_scientist_geonosian", 1, 7.4, -22, -333, 180, 1627822)

	-- largeendcave (1627823)
	-- Anywhere between 20 -> 45 minutes respawn
	spawnMobile("yavin4", "acklay", getRandomNumber(1800, 2700),101.1,-34.3,-321.6,-136,1627823)
	spawnMobile("yavin4", "enhanced_kwi",500,48.0,-34.0,-334.4,0,1627823)
	spawnMobile("yavin4", "geo_cavern_spider",500,91.2,-33.9,-347.9,5,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",500,98.0,-34.1,-334.4,-53,1627823)
	spawnMobile("yavin4", "enhanced_kliknik",500,120.2,-33.9,-330.6,-33,1627823)
	spawnMobile("yavin4", "geo_cavern_spider",500,85.0,-33.8,-309.1,143,1627823)
	spawnMobile("yavin4", "geo_cavern_spider",500,74.7,-34.1,-329.0,-90,1627823)

	-- spiralhallway (1627824)
	spawnMobile("yavin4", "enhanced_kwi",500,9.5,-16.0,-27.9,89,1627824)
	spawnMobile("yavin4", "enhanced_kwi",500,10.8,-6.3,-7.8,-93,1627824)

--------------------------------v-Carbonite Custom-v--------------------------------
------------Entrance to GeoCave
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 20.0359, 10.8348, 7.9557, 269, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 18.563, 10.7957, 10.9675, 244, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 7.80736, 9.87945, 0.32044, 233, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 6.29702, 9.81686, -4.25269, 324, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 1.5271, 9.48426, -2.60875, 70, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 2.30163, 9.75322, 0.246556, 129, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 9.40042, 9.81186, 12.6757, 341, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 4.21328, 9.92977, 13.0537, 8, 1627781)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, 1.07429, 9.05254, -6.45853, 314, 1627781)

------------ Enhanced Kwi
spawnMobile("yavin4", "enhanced_kwi", 500, 20.4464, -13.2145, -23.339, 358, 1627824)
spawnMobile("yavin4", "enhanced_kwi", 500, 0.872029, -18.2155, -28.5348, 91, 1627784)
spawnMobile("yavin4", "enhanced_kwi", 500, -6.32587, -18.1936, -27.0928, 259, 1627784)
spawnMobile("yavin4", "enhanced_kwi", 500, -8.13953, -18.2022, -28.5874, 274, 1627784)

------------ First Room Geonosian Guards
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -37.6846, -18, -36.2814, 0, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -57.3826, -18, -40.3285, 339, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -51.793, -18, -46.3178, 221, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -57.9064, -18, -51.3686, 91, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -38.9291, -18, -53.9654, 108, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -44.1353, -18, -54.2305, 267, 1627785)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -45.9254, -18, -41.3297, 116, 1627785)

------------ Second Room Geonosian Guards
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -69.3899, -18.8215, -42.0605, 50, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -68.2023, -19.2313, -39.5655, 145, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -82.3641, -18.4672, -39.9534, 77, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -78.5493, -18.5647, -43.6332, 2, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -76.4206, -18.4892, -42.1419, 252, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -77.1098, -18.9603, -34.1801, 23, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -74.1253, -18.8097, -33.1786, 281, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -71.2991, -19.03, -36.5209, 19, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -73.0646, -18.1823, -48.0947, 347, 1627788)
spawnMobile("yavin4", "crazed_geonosian_guard", 500, -77.8267, -18.2213, -47.3807, 23, 1627788)

------------ Side-Room new Boss
-- Be`Rok Sa, Old Geonosian General (NEW!)
spawnMobile("yavin4", "be_rok_sa", 1200, -123.332, -18, -32.6821, 86, 1627790, true)

------------ Fire Spider Room
spawnMobile("yavin4", "geo_cavern_spider", 500, -109.313, -22.1044, -100.992, 331, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -105.009, -22.2857, -108.834, 45, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -104.719, -21.9952, -104.793, 155, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -87.595, -22.0167, -116.57, 320, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -95.2747, -22.2362, -107.841, 128, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -106.185, -21.947, -118.162, 198, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -110.202, -21.9808, -119.263, 155, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -115.415, -21.965, -107.071, 303, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -130.81, -21.2676, -111.34, 3, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -127.153, -22.0256, -106.782, 345, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -131.408, -21.8602, -106.297, 359, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -135.208, -21.9204, -104.589, 17, 1627793)
spawnMobile("yavin4", "geo_cavern_spider", 500, -128.62, -21.9827, -91.9656, 339, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -131.292, -22.0254, -92.3499, 358, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -133.198, -22.107, -92.033, 355, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -135.816, -21.9498, -93.9188, 77, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -129.701, -21.9077, -75.1964, 330, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -132.526, -22.1113, -75.4607, 7, 1627794)
spawnMobile("yavin4", "geo_cavern_spider", 500, -112.736, -22.238, -112.411, 334, 1627793)

------------ Imperial Room
-- Imperial Observer Hej Marden (NEW!)
spawnMobile("yavin4", "hej_marden", 1200, -19.9711, -22, -114.33, 179, 1627802, true)

-- Guards
spawnMobile("yavin4", "alert_droideka", 500, -14.6186, -22, -119.127, 290, 1627802)
spawnMobile("yavin4", "alert_droideka", 500, -25.1764, -22, -118.834, 59, 1627802)
spawnMobile("yavin4", "alert_droideka", 500, -19.4226, -22, -132.925, 312, 1627801)
spawnMobile("yavin4", "alert_droideka", 500, -25.5377, -22, -131.249, 269, 1627801)
spawnMobile("yavin4", "alert_droideka", 500, -25.474, -22, -132.535, 269, 1627801)

------------ Failed Experiment Room
-- Escaped Failed Experiment 62 (The Original that I did from Infinity, refactored)
spawnMobile("yavin4", "failed_experiment_62", 1200, -66.0583, -34, -283.372, 359, 1627812, true)

------------ Failed NS Clone Room
-- Failed NS Clone (The Original that I did from Infinity, refactored)
spawnMobile("yavin4", "failed_ns_clone", 1200, -137.222, -34, -180.635, 270, 1627815, true)

------------ Rancor Clone Room (The Original that I did from Infinity, refactored)
spawnMobile("yavin4", "enhanced_rancor", 1800, -146.091, -33.8672, -367.643, 59, 1627818, true)


------------ Force Kliknik Room
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -82.9286, -33.8454, -357.504, 62, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -75.6545, -34.4701, -359.689, 336, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -73.0895, -34.0589, -361.814, 60, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -66.3652, -33.7328, -359.566, 246, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -63.2029, -33.4886, -362.852, 240, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -55.6313, -34.229, -363.338, 97, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -51.716, -33.8383, -361.33, 204, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -53.6142, -33.8047, -368.018, 248, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -58.1239, -33.2318, -374.173, 0, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -57.3402, -33.6977, -378.516, 72, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -62.642, -33.5872, -386.865, 214, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -78.9126, -33.6554, -389.812, 319, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -78.6055, -33.7862, -384.885, 243, 1627819)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -73.2763, -34.0586, -396.825, 150, 1627820)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -67.8315, -33.3554, -396.511, 177, 1627820)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -76.2928, -33.2735, -408.202, 152, 1627820)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -74.2401, -33.0057, -409.537, 230, 1627820)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -57.7664, -33.9601, -404.794, 45, 1627820)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, -53.5983, -34.18, -405.234, 327, 1627820)

------------ Acklay's Room
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 84.2207, -34.1299, -314.364, 143, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 89.4669, -33.8985, -314.505, 25, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 103.142, -33.5132, -316.04, 145, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 112.219, -33.8685, -310.321, 112, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 114.835, -34.2061, -310.833, 245, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 119.155, -34.0449, -324.596, 180, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 115.266, -33.9801, -329.769, 299, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 107.941, -34.1052, -330.353, 19, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 89.6946, -33.9468, -344.97, 206, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 84.3973, -33.7533, -347.204, 149, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 78.4189, -34.0904, -330.959, 309, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 66.1896, -33.999, -327.675, 192, 1627823)
spawnMobile("yavin4", "enhanced_force_kliknik", 500, 68.6831, -34.1708, -331.426, 300, 1627823)

	--------------------------------^-Carbonite Custom-^--------------------------------


	-- Heralds, not in lab
	if isZoneEnabled("corellia") then
		spawnMobile("corellia", "herald_biogenic_teraeza", 60, 21.3645, 1.28309, 9.48413, 142.744, 1935823)
	end

	if isZoneEnabled("naboo") then
		spawnMobile("naboo", "herald_biogenic_harmon", 60, 5094, -192, 6754, -173, 0)
	end

	spawnMobile("yavin4", "herald_biogenic_gardo", 60, -3.8, 0.1, -3.8, 88, 1713374)
end

function GeonosianLab:turnOnTrap(pTrap)
	if (pTrap == nil) then
		return
	end

	local trapID = SceneObject(pTrap):getObjectID()
	local trapIndex = readData(trapID .. ":trapIndex")
	local trapEnabled = readData("geoLab:trapEnabled:" .. trapIndex)

	if (trapEnabled == 1) then
		return
	end

	if (trapIndex < 3) then
		SceneObject(pTrap):playEffect("clienteffect/item_gas_leak_trap_on.cef", "")
	end

	if (trapIndex == 4) then
		SceneObject(pTrap):clearContainerDefaultAllowPermission(OPEN + MOVEOUT)
		SceneObject(pTrap):setContainerDefaultDenyPermission(OPEN + MOVEOUT)
	end

	createEvent(2000, "GeonosianLab", "spawnTrapEffect", pTrap, "")
	writeData("geoLab:trapEnabled:" .. trapIndex, 1)
end

function GeonosianLab:spawnTrapEffect(pTrap)
	if (pTrap == nil) then
		return
	end

	local trapID = SceneObject(pTrap):getObjectID()
	local trapIndex = readData(trapID .. ":trapIndex")

	local trapEnabled = readData("geoLab:trapEnabled:" .. trapIndex)

	if (trapEnabled == 0) then
		return
	end

	local trapEffectID = readData("geoLab:trapEffect:" .. trapIndex)
	local pTrapEffect = getSceneObject(trapEffectID)

	if (pTrapEffect ~= nil) then
		SceneObject(pTrapEffect):destroyObjectFromWorld()
	end

	if (trapIndex >= 3) then
		pTrapEffect = spawnSceneObject("yavin4", "object/static/particle/pt_poi_electricity_2x2.iff", SceneObject(pTrap):getPositionX(), SceneObject(pTrap):getPositionZ(), SceneObject(pTrap):getPositionY(), SceneObject(pTrap):getParentID(), 0)
	else
		pTrapEffect = spawnSceneObject("yavin4", "object/static/particle/pt_green_hanging_smoke.iff", SceneObject(pTrap):getPositionX(), SceneObject(pTrap):getPositionZ(), SceneObject(pTrap):getPositionY(), SceneObject(pTrap):getParentID(), 0)
	end

	if pTrapEffect == nil then
		return
	end

	writeData("geoLab:trapEffect:" .. trapIndex, SceneObject(pTrapEffect):getObjectID())

	if (trapIndex < 3) then
		SceneObject(pTrap):playEffect("clienteffect/item_gas_leak_trap_lp.cef", "")
	end
end

function GeonosianLab:hasRebreather(pPlayer)
	if (pPlayer == nil) then
		return false
	end

	local pRebreather = CreatureObject(pPlayer):getSlottedObject("eyes")

	if pRebreather == nil then
		return false
	end

	local headSlot = SceneObject(pRebreather):getTemplateObjectPath()
	return headSlot == "object/tangible/wearables/goggles/rebreather.iff" or headSlot == "object/tangible/wearables/armor/mandalorian/armor_mandalorian_helmet.iff"
end

function GeonosianLab:enteredTrapArea(pActiveArea, pMovingObject)
	if (pMovingObject == nil or pActiveArea == nil or not SceneObject(pMovingObject):isPlayerCreature()) then
		return 0
	end

	local trapIndex = readData(SceneObject(pActiveArea):getObjectID() .. ":trapIndex")
	local trapEnabled = readData("geoLab:trapEnabled:" .. trapIndex)

	if (trapEnabled == 0) then
		return 0
	end

	-- Don't trigger trap if player isnt at base level of cell
	if (trapIndex == 2 and SceneObject(pMovingObject):getPositionZ() > -30) then
		return 0
	end

	if (trapIndex == 3) then
		CreatureObject(pMovingObject):inflictDamage(pMovingObject, 0, getRandomNumber(300, 700), 1)
		CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:shock") --You feel electricity coursing through your body!
		playClientEffectLoc(CreatureObject(pMovingObject):getObjectID(), "clienteffect/trap_electric_01.cef", "yavin4", CreatureObject(pMovingObject):getPositionX(), CreatureObject(pMovingObject):getPositionZ(), CreatureObject(pMovingObject):getPositionY(), CreatureObject(pMovingObject):getParentID())
	elseif (trapIndex == 1 or trapIndex == 2) then
		if (self:hasRebreather(pMovingObject)) then
			CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:gasmask") --Your gasmask diffuses the poison gas and you are able to breathe with no difficulty.
		else
			local areaID = SceneObject(pActiveArea):getObjectID()

			CreatureObject(pMovingObject):addDotState(pMovingObject, POISONED, 150, HEALTH, 300, 100, areaID, 0)
			CreatureObject(pMovingObject):sendSystemMessage("@dungeon/geonosian_madbio:toxic_fumes") --You breathe in toxic fumes!
		end
	end

	return 0
end

function GeonosianLab:keypadSuiCallback(pPlayer, pSui, eventIndex, code, pressedButton)
	if (pPlayer == nil) then
		return
	end

	local pPageData = LuaSuiBoxPage(pSui):getSuiPageData()

	if (pPageData == nil) then
		return
	end

	local suiPageData = LuaSuiPageData(pPageData)

	local keypadID = suiPageData:getTargetNetworkId()

	local pKeypad = getSceneObject(keypadID)

	if (pKeypad == nil) then
		return
	end

	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		return
	end

	local enteredCode = 0

	if (code ~= nil and code ~= "") then
		enteredCode = tonumber(code)
	end

	local keypadIndex = readData(keypadID .. ":geonosianLab:keypadIndex")
	local keypadCode = self.keypadCodes[keypadIndex]

	if (pressedButton == "enter") then
		if (enteredCode == keypadCode) then
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:right_code") --You have successfully entered the code for this door.
			self:givePermission(pPlayer, "GeoLabKeypad" .. keypadIndex)
		else
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:bad_code") --The number that you entered is not a valid code for this door.
		end
	elseif (pressedButton == "slice") then
		if (CreatureObject(pPlayer):hasSkill("combat_smuggler_slicing_01")) then
			local pGhost = CreatureObject(pPlayer):getPlayerObject()

			if (pGhost ~= nil) then
				printf("starting slicing session on " .. SceneObject(pKeypad):getObjectID() .. "\n")
				PlayerObject(pGhost):startSlicingSession(pKeypad, true)
			end
		end
	elseif (pressedButton == "keycard") then
		if (keypadIndex ~= 4 and self:hasGeoItem(pPlayer, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")) then
			self:removeGeoItem(pPlayer, "object/tangible/loot/dungeon/geonosian_mad_bunker/passkey.iff")
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pPlayer, "GeoLabKeypad" .. keypadIndex)
		elseif (keypadIndex == 4 and self:hasGeoItem(pPlayer, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")) then
			self:removeGeoItem(pPlayer, "object/tangible/loot/dungeon/geonosian_mad_bunker/engineering_key.iff")
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:keycard_success") --You have successfully used a keycard on this door.
			self:givePermission(pPlayer, "GeoLabKeypad" .. keypadIndex)
		end
	end
end

function GeonosianLab:getObjOwner(pObj)
	if (pObj == nil) then
		return nil
	end

	local pPlayerInv = SceneObject(pObj):getParent()

	if (pPlayerInv == nil) then
		return nil
	end

	local parent = SceneObject(pPlayerInv):getParent()

	if (parent == nil) then
		return nil
	end

	if (SceneObject(parent):isCreatureObject()) then
		return parent
	end

	return nil
end

function GeonosianLab:notifyEnteredBunker(pBuilding, pPlayer)
	if pPlayer == nil or not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	for i = 1, #self.lockedCells, 1 do
		BuildingObject(pBuilding):broadcastSpecificCellPermissions(self.lockedCells[i])
	end

	return 0
end

function GeonosianLab:notifyExitedBunker(pBuilding, pPlayer)
	if pPlayer == nil or not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	for i = 1, #self.lockedCells, 1 do
		self:removePermission(pPlayer, "GeoLabKeypad" .. i)
	end

	local playerID = SceneObject(pPlayer):getObjectID()

	deleteData(playerID .. ":geoEngineerState")
	deleteData(playerID .. ":geoAssistantState")
	deleteData(playerID .. ":geo_security_tech_talked")
	CreatureObject(pPlayer):removeScreenPlayState(1, "geonosian_lab_tenloss")

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:relock") --Security systems at this facility have been cycled and reset.

	return 0
end

function GeonosianLab:hasGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return 0
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	return pItem ~= nil
end

function GeonosianLab:removeGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	local pItem = getContainerObjectByTemplate(pInventory, itemTemplate, true)

	if (pItem ~= nil) then
		SceneObject(pItem):destroyObjectFromWorld()
		SceneObject(pItem):destroyObjectFromDatabase()
	end
end

function GeonosianLab:giveGeoItem(pPlayer, itemTemplate)
	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (not self:hasGeoItem(pPlayer, itemTemplate)) then
		local pItem = giveItem(pInventory, itemTemplate, -1)
		if (pItem ~= nil) then
			SceneObject(pItem):sendTo(pPlayer)
		end
	end
end

function GeonosianLab:respawnDebris(pDebris, index)
	if (pDebris == nil) then
		return
	end

	local debrisData = self.debrisLocs[tonumber(index)]

	pDebris = spawnSceneObject("yavin4", debrisData.template, debrisData.x, debrisData.z, debrisData.y, debrisData.cell, 1, 0, 0, 0)

	if (pDebris ~= nil) then
		writeData(SceneObject(pDebris):getObjectID() .. ":geonosianLab:debrisIndex", index)
		createObserver(OBJECTDESTRUCTION, "GeonosianLab", "notifyDebrisDestroyed", pDebris)
	end
end

function GeonosianLab:notifyDebrisDestroyed(pDebris, pPlayer)
	if (pPlayer == nil or pDebris == nil) then
		return 1
	end

	local index = readData(SceneObject(pDebris):getObjectID() .. ":geonosianLab:debrisIndex")

	playClientEffectLoc(SceneObject(pPlayer):getObjectID(), "clienteffect/combat_explosion_lair_large.cef", "yavin4", SceneObject(pDebris):getPositionX(), SceneObject(pDebris):getPositionZ(), SceneObject(pDebris):getPositionY(), SceneObject(pDebris):getParentID())
	createEvent(1000, "Warren", "destroySceneObject", pDebris, "")
	createEvent(180000, "GeonosianLab", "respawnDebris", pDebris, tostring(index))
	CreatureObject(pPlayer):clearCombatState(1)

	return 1
end

function GeonosianLab:destroySceneObject(pObject)
	if (pObject ~= nil) then
		SceneObject(pObject):destroyObjectFromWorld()
	end
end

function GeonosianLab:notifyLockedDoorArea(pArea, pPlayer)
	if (pPlayer == nil or not SceneObject(pPlayer):isCreatureObject()) then
		return 0
	end

	if (CreatureObject(pPlayer):isAiAgent()) then
		return 0
	end

	local areaDoor = readData(SceneObject(pArea):getObjectID() .. ":geonosianLab:keypadIndex")

	if not self:hasPermission(pPlayer, "GeoLabKeypad" .. areaDoor) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:door_locked") -- This door is locked.
	end

	return 0
end

function GeonosianLab:resetTrashLoot(pTrash)
	if (pTrash == nil) then
		return
	end

	writeData("geoLab:trashContainerLoot", 1)
end

function GeonosianLab:notifyKeypadSliced(pKeypad, pPlayer, success)
	if (pKeypad == nil) then
		return 1
	end

	if (pPlayer == nil) then
		return 0
	end

	if (success == 1) then
		local keypadIndex = readData(SceneObject(pKeypad):getObjectID() .. ":geonosianLab:keypadIndex")
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/geonosian_madbio:hack_success") --You have successfully hacked this terminal.
		self:givePermission(pPlayer, "GeoLabKeypad" .. keypadIndex)
	end

	return 0
end

function GeonosianLab:setupPermissionGroups()
	for i = 1, #self.lockedCells, 1 do
		local pCell = getSceneObject(self.lockedCells[i])
		if pCell ~= nil then
			SceneObject(pCell):setContainerInheritPermissionsFromParent(false)
			SceneObject(pCell):clearContainerDefaultDenyPermission(WALKIN)
			SceneObject(pCell):clearContainerDefaultAllowPermission(WALKIN)
			SceneObject(pCell):setContainerAllowPermission("GeoLabKeypad" .. i, WALKIN)
			SceneObject(pCell):setContainerDenyPermission("GeoLabKeypad" .. i, MOVEIN)
		end
	end
end

function GeonosianLab:givePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost ~= nil) then
		PlayerObject(pGhost):addPermissionGroup(permissionGroup, true)
	end
end

function GeonosianLab:removePermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	if (PlayerObject(pGhost):hasPermissionGroup(permissionGroup)) then
		PlayerObject(pGhost):removePermissionGroup(permissionGroup, true)
	end
end

function GeonosianLab:hasPermission(pPlayer, permissionGroup)
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return false
	end

	return PlayerObject(pGhost):hasPermissionGroup(permissionGroup)
end

----------------------------------------------------------------------------------------------
---------------------------Starting HiggJib Encounter Sections--------------------------------
----------------------------------------------------------------------------------------------
function GeonosianLab:setupHiggJibbEncounter()
	-- Anywhere between 4 hours to 6 hour respawn, random
	local pHiggJibb = spawnMobile("yavin4", "higg_jibb", getRandomNumber(14400, 21600), 5.04706, -34, -347.329, 270, 1627822)
	writeData("GeonosianLab:hjDamageTaken", 0) -- default spawned state, no interactions yet from anyone!

	ObjectManager.withCreatureObject(pHiggJibb, function(oBoss)
		writeData("GeonosianLab:spawnState", 0)
		writeData("GeonosianLab", oBoss:getObjectID())
		createObserver(DAMAGERECEIVED,"GeonosianLab","boss_damage", pHiggJibb)
		createObserver(OBJECTDESTRUCTION, "GeonosianLab", "notifyBossDead", pHiggJibb)
	end)
	return 0
end

function GeonosianLab:notifyBossDead(pHiggJibb, pPlayer)
	writeData("GeonosianLab:spawnState", 0)
	return 0
end

function GeonosianLab:boss_damage(pHiggJibb, pPlayer)
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pHiggJibb)

	if (boss ~= nil) then
		if (readData("GeonosianLab:hjDamageTaken") == 0) then
			writeData("GeonosianLab:hjDamageTaken", 1)
			createEvent(30 * 1000, "GeonosianLab", "checkHJIsInCombat", pHiggJibb, "")
		end

		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)
		local firstPhase = 0.9
		-- local secondPhase = 0.4

		-- If HiggJibb goes outside the designated tether range we want to snap him back and reset everything!
		self:checkTetherDistance(pHiggJibb)

		if (((bossHealth <= (bossMaxHealth * firstPhase)) or (bossAction <= (bossMaxAction * firstPhase)) or (bossMind <= (bossMaxMind * firstPhase))) and (readData("GeonosianLab:spawnState") == 0) and (self.isResetting == false)) then
			writeData("GeonosianLab:spawnState", 1)
			spatialChat(pHiggJibb, "UTINI!!!")

			-- Setup loop event here for adds
			createEvent(1 * 1000, "GeonosianLab", "setupAddsEvent", pHiggJibb, "")
		end	

		-- Put another event here when on low hp?
		-- if (((bossHealth <= (bossMaxHealth * secondPhase)) or (bossAction <= (bossMaxAction * secondPhase)) or (bossMind <= (bossMaxMind * secondPhase))) and readData("GeonosianLab:spawnState") == 1) then
		-- 	writeData("GeonosianLab:spawnState", 2)
		-- 	spatialChat(pHiggJibb, "UTINI!!! UTINI!!! UTINI!!!")
		-- end
	end
	return 0
end

function GeonosianLab:setupAddsEvent(pObject)
	-- So long as our boss is alive, and we're in the spawning stage, keep going!
	if (readData("GeonosianLab:spawnState") == 1) then
		local phaseName = self.addPhaseName
		for i = 1, self.totalAdds, 1 do
			local hallucaID = readData(phaseName .. ":" .. i)
			local pHalluca = getSceneObject(hallucaID)

			if (pHalluca == nil or CreatureObject(pHalluca):isDead()) then
				self:spawnHiggJibbAdd(i, phaseName, pObject)
			end
		end
		-- Every 30seconds we want adds to respawn if they died or respawned from being inactive!
		createEvent(30 * 1000, "GeonosianLab", "setupAddsEvent", pObject, "")
	end
end

-- Passing in the index of the hjHallucinations map, and the add object itself
function GeonosianLab:spawnHiggJibbAdd(i, phaseName, pObject)
	local boss = LuaCreatureObject(pObject)

	-- Spawn the add
	addObject = spawnMobile("yavin4", "higg_jibb_hallucination", 0, (boss:getPositionX() + getRandomNumber(-5, 5)), boss:getPositionZ(), (boss:getPositionY() + getRandomNumber(-5, 5)), getRandomNumber(360), 1627822)
	
	-- Get nearby encounter players
	-- local playerTable = SceneObject(addObject):getPlayersInRange(64)

	-- if (playerTable == nil) then
	-- 	print("No players near Hallucination!!!!")
	-- else
	-- 	-- print(playerTable)
	-- 	-- print(#playerTable)
	-- 	-- for x = 1, #playerTable, 1 do
	-- 	-- 	print("BOOP")
	-- 	-- end
	-- 	-- print("Number of players around Hallucination: " .. #playerTable)
	-- 	-- if (#playerTable > 0) then
	-- 	-- 	print("Players table is not empty!")
	-- 	-- 	local randomPlayer = playerTable[getRandomNumber(#playerTable)]
	-- 	-- 	if (randomPlayer ~= nil) then
	-- 	-- 		print("randomPlayer has been selected!")
	-- 	-- 	end
	-- 	-- 	ObjectManager.withCreatureObject(addObject, function(Add) Add:engageCombat(randomPlayer) end)
	-- 	-- end
	-- end
	
	if (addObject ~= nil) then
		writeData(phaseName .. ":" .. i, SceneObject(addObject):getObjectID())
		createEvent(60 * 1000, "GeonosianLab", "removeAdd", addObject, "")
	end
end

-- Check if our adds are in combat, if they're not then despawn them after a set amount of time!
-- This is to prevent toxic trolling, or people mistakenly failing the encounter and making it harder to get to Acklay for others
function GeonosianLab:removeAdd(pObject)
	if (pObject ~= nil) then
		local phaseName = self.addPhaseName

		-- Add is currently in combat, set another timed event to check again later!
		-- If the boss has died, or the boss has reset, we don't need adds anymore!
        if (CreatureObject(pObject):isInCombat() and readData("GeonosianLab:spawnState") == 1) then
            createEvent(30 * 1000, "GeonosianLab", "removeAdd", pObject, "")
            return 0
		end

		-- Clean up object from world
		SceneObject(pObject):destroyObjectFromWorld()
		SceneObject(pObject):destroyObjectFromDatabase()

		-- Find our dataKey to clean up data
		local dataIndex = self:findDataKey(pObject)
		if (dataIndex > 0) then
			deleteData(phaseName .. ":" .. dataIndex)
		end
    end
end

-- Make sure our boss is in combat, else reset him
function GeonosianLab:checkHJIsInCombat(pObject)
	if (pObject ~= nil) then
		if CreatureObject(pObject):isInCombat() then
            createEvent(30 * 1000, "GeonosianLab", "checkHJIsInCombat", pObject, "")
            return 0
        end
        self:resetBossHP(pObject)
    end
end

-- If boss gets out of combat for 60 seconds then reset their health to full!
function GeonosianLab:resetBossHP(pObject)
	if (pObject ~= nil) then
		-- Grab our variables
		local boss = LuaCreatureObject(pObject)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		-- Reset wounds so people can't cheese the boss down
		boss:setWounds(0, 0);
		boss:setWounds(3, 0);
		boss:setWounds(6, 0);
		boss:setShockWounds(0);

		-- Reset HP to Full
		boss:setHAM(0, bossMaxHealth)
		boss:setHAM(3, bossMaxAction)
		boss:setHAM(6, bossMaxMind)

		-- Set States
		writeData("GeonosianLab:hjDamageTaken", 0)
		writeData("GeonosianLab:spawnState", 0)
	end
end

-- We don't have a way of passing the dataKey to an timedEvent, so we have to do this!
function GeonosianLab:findDataKey(pObject)
	local addsCount = self.totalAdds
	local objectID = SceneObject(pObject):getObjectID()
	for i = 1, addsCount, 1 do
		if (readData(self.addPhaseName .. ":" .. i) == objectID) then
			return i
		end
	end
	return 0
end

-- Check Tether Distance
function GeonosianLab:checkTetherDistance(pObject)
	if (pObject ~= nil) then
		local boss = LuaCreatureObject(pObject)
		local tetherX = 5.04706
		local tetherY = -347.329
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY()
		
		local distance = ((x2 - tetherX)*(x2 - tetherX)) + ((y2 - tetherY)*(y2 - tetherY))
		local maxDistance = 65
		if distance > (maxDistance * maxDistance) then
			if ((readData("GeonosianLab:spawnState") == 1) and (self.isResetting == false)) then
				spatialChat(pObject, "U T I N I")
				writeData("GeonosianLab:spawnState", 2)
			end

			-- Spike our reset event that prevents race conditions with states
			createEvent(1 * 1000, "GeonosianLab", "bossIsResetting", pObject, "")
		end
	end
end

-- Created to prevent race conditions with HP conditionals and respawning of adds
function GeonosianLab:bossIsResetting(pObject)
	if (pObject ~= nil) then

		if CreatureObject(pObject):isInCombat() then
			self.isResetting = true
			-- Force our boss out of combat
			forcePeace(pObject)
			forcePeace(pObject)
			forcePeace(pObject)
			createEvent(1 * 1000, "GeonosianLab", "bossIsResetting", pObject, "")
			return 0
		end

		-- Finally, do the reset
		self:resetBossHP(pObject);
		self.isResetting = false
	end
end
----------------------------------------------------------------------------------------------
-----------------------------Ending HiggJib Encounter Sections--------------------------------
----------------------------------------------------------------------------------------------