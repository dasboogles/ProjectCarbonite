NightSisterVsSingingMountainClanScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "NightSisterVsSingingMountainClanScreenPlay",
	
	lootContainers = {
		164427,
		164428,		
		164429,	
		164430			
	},
	
	lootLevel = 38,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 3500000},
				{group = "junk", chance = 3500000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("NightSisterVsSingingMountainClanScreenPlay", true)

function NightSisterVsSingingMountainClanScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function NightSisterVsSingingMountainClanScreenPlay:spawnMobiles()
	-- Originals
	spawnMobile("dathomir", "singing_mountain_clan_arch_witch",900,-2541,130.5,1581,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_arch_witch",900,-2500.6,123.6,1581,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_councilwoman",1800,-2520.4,130,1598.8,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon",900,-2520.4,124.2,1566.9,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_guardian",900,-2520.4,127.9,1586.9,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate",900,-2539.3,125.6,1548.7,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate",900,-2503.1,120.6,1548.7,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_rancor",900,-2550.2,129.6,1566.9,179,0)
	spawnMobile("dathomir", "singing_mountain_clan_rancor",900,-2491.9,120.2,1566.9,179,0)	
	spawnMobile("dathomir", "singing_mountain_clan_rancor_tamer",900,-2538.1,127.6,1566.9,179,0)	
	spawnMobile("dathomir", "singing_mountain_clan_rancor_tamer",900,-2504.4,121.6,1566.9,179,0)	
	spawnMobile("dathomir", "singing_mountain_clan_scout",900,-2551,127.1,1548.7,179,0)	
	spawnMobile("dathomir", "singing_mountain_clan_scout",900,-2490.6,119.4,1548.7,179,0)	
	spawnMobile("dathomir", "singing_mountain_clan_sentry",900,-2520.4,122.9,1548.7,179,0)	
	-- Originals

	-- New Additions
	-- New CouncilWomen
	spawnMobile("dathomir", "singing_mountain_clan_councilwoman", 1800, -2517.28, 129.459, 1597.52, 196, 0)
	spawnMobile("dathomir", "singing_mountain_clan_councilwoman", 1800, -2522.46, 130.057, 1596.17, 148, 0)
	-- New CouncilWomen
	spawnMobile("dathomir", "singing_mountain_clan_arch_witch", 900, -2501.43, 127.857, 1601.16, 189, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2482.77, 122.452, 1588.48, 195, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2514.92, 123.841, 1571.87, 182, 0)
	spawnMobile("dathomir", "singing_mountain_clan_rancor", 900, -2532.12, 126.522, 1567.17, 177, 0)
	spawnMobile("dathomir", "singing_mountain_clan_guardian", 900, -2549.85, 128.058, 1556.3, 150, 0)
	spawnMobile("dathomir", "singing_mountain_clan_scout", 900, -2571.12, 129.137, 1548.77, 143, 0)
	spawnMobile("dathomir", "singing_mountain_clan_arch_witch", 900, -2572.32, 131.331, 1567.19, 139, 0)
	spawnMobile("dathomir", "singing_mountain_clan_scout", 900, -2562.47, 132.443, 1584.73, 152, 0)
	spawnMobile("dathomir", "singing_mountain_clan_guardian", 900, -2550.77, 132.932, 1601.04, 155, 0)
	spawnMobile("dathomir", "singing_mountain_clan_scout", 900, -2537.93, 132.873, 1613.57, 160, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2524.2, 131.974, 1617.08, 173, 0)
	spawnMobile("dathomir", "singing_mountain_clan_sentry", 900, -2512.83, 130.664, 1615.53, 181, 0)
	spawnMobile("dathomir", "singing_mountain_clan_sentry", 900, -2502.43, 129.313, 1612.75, 181, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2492.2, 127.502, 1606.7, 190, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2482.75, 124.755, 1599.89, 199, 0)
	spawnMobile("dathomir", "singing_mountain_clan_arch_witch", 900, -2482.08, 120.878, 1578.85, 209, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2481.98, 119.278, 1566.57, 206, 0)
	spawnMobile("dathomir", "singing_mountain_clan_rancor", 900, -2483.48, 118.659, 1553.47, 206, 0)
	spawnMobile("dathomir", "singing_mountain_clan_guardian", 900, -2479.09, 118.388, 1541.59, 221, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2474.85, 118.272, 1561.33, 205, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2506.89, 121.408, 1561.65, 189, 0)
	spawnMobile("dathomir", "singing_mountain_clan_sentry", 900, -2526.78, 124.297, 1557.89, 177, 0)
	spawnMobile("dathomir", "singing_mountain_clan_rancor", 900, -2542.18, 126.814, 1555.96, 157, 0)
	spawnMobile("dathomir", "singing_mountain_clan_dragoon", 900, -2559.35, 127.26, 1542.12, 138, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2570.76, 125.976, 1525.43, 122, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2489.47, 120.074, 1533.98, 234, 0)
	spawnMobile("dathomir", "singing_mountain_clan_guardian", 900, -2511.03, 121.906, 1540.53, 182, 0)
	spawnMobile("dathomir", "singing_mountain_clan_initiate", 900, -2530.95, 124.246, 1537.65, 165, 0)
	-- New Additions
	-- -- -- -- -- --
	-- Originals
	spawnMobile("dathomir", "nightsister_spell_weaver",900,-2538.0,128.8,1488.5,0,0)
	spawnMobile("dathomir", "nightsister_spell_weaver",900,-2500.6,128.8,1488.6,0,0)
	spawnMobile("dathomir", "nightsister_elder",1800,-2519.9,130.6,1470,0,0)	
	spawnMobile("dathomir", "nightsister_protector",900,-2521.2,130.2,1482.2,0,0)		
	spawnMobile("dathomir", "nightsister_stalker",900,-2519.9,128.4,1502.1,0,0)	
	spawnMobile("dathomir", "nightsister_sentinel",900,-2539.1,125.1,1527.8,0,0)	
	spawnMobile("dathomir", "nightsister_initiate",900,-2538.2,125.6,1518,0,0)	
	spawnMobile("dathomir", "nightsister_initiate",900,-2502.5,123.8,1520.9,0,0)	
	spawnMobile("dathomir", "nightsister_rancor",900,-2550.4,126.0,1502.7,0,0)
	spawnMobile("dathomir", "nightsister_rancor",900,-2489.1,125.2,1501.8,0,0)	
	spawnMobile("dathomir", "nightsister_rancor_tamer",900,-2499.2,127.1,1502,0,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer",900,-2535.1,127.0,1502.3,0,0)	
	spawnMobile("dathomir", "nightsister_outcast",900,-2551.4,125.3,1518.1,0,0)	
	spawnMobile("dathomir", "nightsister_outcast",900,-2488.6,121.6,1521.7,0,0)	
	spawnMobile("dathomir", "nightsister_sentry",900,-2517.1,125.2,1519.9,0,0)
	-- Originals	
	
	-- New Additions
	-- New Elders
	spawnMobile("dathomir", "nightsister_elder", 1800, -2522.21, 130.559, 1469.43, 22, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -2517.55, 130.548, 1470.56, 308, 0)
	-- New Elders
	spawnMobile("dathomir", "nightsister_sentry", 900, -2527.55, 130.155, 1477.41, 357, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 900, -2511.61, 130.255, 1478.74, 357, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 900, -2496.16, 128.467, 1480.38, 348, 0)
	spawnMobile("dathomir", "nightsister_rancor", 900, -2537.02, 129.527, 1477.74, 0, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2545.86, 128.383, 1482.4, 19, 0)
	spawnMobile("dathomir", "nightsister_outcast", 900, -2556.21, 128.335, 1472.5, 19, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2545.01, 129.833, 1462.56, 13, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 900, -2531.88, 130.458, 1460.01, 17, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 900, -2520.37, 130.496, 1457.22, 3, 0)
	spawnMobile("dathomir", "nightsister_stalker", 900, -2505.61, 129.554, 1456.81, 351, 0)
	spawnMobile("dathomir", "nightsister_sentry", 900, -2494.53, 128.177, 1464.87, 338, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 900, -2485.51, 126.683, 1471.28, 9, 0)
	spawnMobile("dathomir", "nightsister_outcast", 900, -2479.38, 124.945, 1485.8, 312, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2475.92, 120.299, 1518.21, 346, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 900, -2485.09, 121.581, 1518.43, 349, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 900, -2498.75, 123.499, 1519.83, 358, 0)
	spawnMobile("dathomir", "nightsister_sentry", 900, -2508.65, 124.384, 1521.02, 352, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2520.95, 125.25, 1520.31, 337, 0)
	spawnMobile("dathomir", "nightsister_rancor", 900, -2533.47, 125.58, 1519.05, 345, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 900, -2548.48, 125.37, 1519.83, 359, 0)
	spawnMobile("dathomir", "nightsister_outcast", 900, -2560.17, 125.728, 1526.96, 12, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 900, -2555.09, 125.671, 1528.64, 34, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 900, -2540.27, 125.079, 1531.06, 34, 0)
	spawnMobile("dathomir", "nightsister_stalker", 900, -2524.03, 124.129, 1530.09, 4, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2510.04, 122.833, 1530.96, 355, 0)
	spawnMobile("dathomir", "nightsister_sentry", 900, -2492.07, 120.622, 1532.07, 347, 0)
	spawnMobile("dathomir", "nightsister_rancor", 900, -2480.55, 119.028, 1533.76, 333, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 900, -2554.71, 125.416, 1507.82, 307, 0)
	spawnMobile("dathomir", "nightsister_initiate", 900, -2567.91, 124.931, 1504.63, 341, 0)
	spawnMobile("dathomir", "nightsister_outcast", 900, -2573.02, 125.17, 1515.03, 25, 0)
	-- New Additions
end
