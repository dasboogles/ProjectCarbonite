RancorCaveScreenPlay = ScreenPlay:new {
    numberOfActs = 1,
  --4226, 2062 cave enterence
  --ID 4335462
  screenplayName = "RancorCaveScreenPlay",

  lootContainers = {
      9815402,
      9815403,
      9815404,
      9815405,
      9815406,
      9815412
  },

	lootLevel = 250,

  lootGroups = 
  {
    {
      groups = {
        {group = "heavy_weapons_consumable", chance = 10000000}
      },
      lootChance = 7500000
    },
    {
      groups = {
        {group = "rifles", chance = 10000000}
      },
      lootChance = 7500000
    },
    {
      groups = {
        {group = "carbines", chance = 10000000}
      },
      lootChance = 7500000
    },
    {
      groups = {
        {group = "pistols", chance = 10000000}
      },
      lootChance = 7500000
    },
    {
      groups = {
        {group = "rancor_common", chance = 10000000}
      },
      lootChance = 7500000
    },
	},

	lootContainerRespawn = 900 -- 15 minutes
}

registerScreenPlay("RancorCaveScreenPlay", true)

function RancorCaveScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
       		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function RancorCaveScreenPlay:spawnMobiles()
        -- --Cell[4335463]
        -- spawnMobile("dathomir", "enraged_bull_rancor", 3600, -23.6, -27.5, -8.1, 87, 4335463)

        -- --Cell[4335464]
        -- spawnMobile("dathomir", "enraged_rancor", 3600, -23.8, -42.4, -64.0, 0, 4335464)
        -- spawnMobile("dathomir", "enraged_rancor", 3600, -50.6, -48.9, -61.7, 127, 4335464)
        -- spawnMobile("dathomir", "gnarled_rancor", 3600, -49.1, -47.4, -12.0, 177, 4335464)
        -- spawnMobile("dathomir", "enraged_rancor", 3600, -54.4, -68.3, -40.0, -82, 4335464)

        -- --Cell[4335473]
        -- spawnMobile("dathomir", "enraged_bull_rancor", 3600, -93.4, -46.6, -128.6, 3, 4335473)
        --   --Youths
        -- spawnMobile("dathomir", "rancor_youth", 3600, -81.3, -46.2, -137.8, 152, 4335473)
        -- spawnMobile("dathomir", "rancor_youth", 3600, -72.7, -45.6, -139.7, -123, 4335473)
        -- spawnMobile("dathomir", "rancor_youth", 3600, -77.6, -45.8, -148.0, -19, 4335473)

        -- --Cell[4335465]
        -- spawnMobile("dathomir", "mutant_rancor", 3600, -87.1, -62.2, -14.9, -178, 4335465)

        -- --Cell[4335466]
        -- spawnMobile("dathomir", "gnarled_rancor", 3600, -79.0, -76.7, -89.2, 4, 4335466)

        -- --Cell[4335467]
        -- spawnMobile("dathomir", "mutant_rancor", 3600, -95.4, -66.3, -109.3, 172, 4335467)

        -- --Cell[4335470]
        --   --Mutant/Enraged
        -- spawnMobile("dathomir", "enraged_bull_rancor", 3600, -130.4, -66.8, -107.7, 91, 4335470)
        --   --Youths
        -- spawnMobile("dathomir", "rancor_youth", 3600, -151.6, -66.5, -125.0, 69, 4335470)
        -- spawnMobile("dathomir", "rancor_youth", 3600, -132.8, -66.6, -121.8, -82, 4335470)

        --   --Ancient
        -- --Cell[4335471]
        -- spawnMobile("dathomir", "ancient_bull_rancor", 5400, -189.9, -66.5, -102.1, 87, 4335471)
        -- spawnMobile("dathomir", "ancient_bull_rancor", 5400, -4224.2, 25.3, -2091.7, 132, 0)
        --
        -- CUSTOM
        -- Juvey Spawns
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -127.222, -66.6411, -103.167, 233, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -126.623, -66.6568, -109.342, 278, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -138.179, -67.0646, -97.1847, 344, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -131.713, -66.9429, -88.6183, 257, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -120.277, -67.067, -87.0235, 98, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -112.29, -66.839, -102.146, 160, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -111.764, -66.3439, -110.43, 359, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -101.246, -66.0502, -107.246, 84, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -93.132, -66.0754, -121.248, 51, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -112.52, -65.9998, -120.241, 180, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -126.81, -66.6899, -127.412, 264, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -136.851, -66.3113, -117.141, 212, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -153.811, -66.6565, -112.233, 316, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -153.938, -66.1192, -96.457, 93, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -155.799, -66.74, -103.767, 260, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -162.929, -66.9376, -99.3634, 272, 4335471)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -184.683, -65.6952, -107.828, 79, 4335471)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -189.463, -66.2807, -98.6537, 88, 4335471)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -182.433, -65.7355, -101.267, 263, 4335471)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -150.876, -66.1536, -129.647, 33, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -155.007, -65.5969, -126.186, 42, 4335470)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -57.2289, -71.3835, -114.641, 11, 4335468)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -53.2246, -77.1504, -91.9036, 189, 4335468)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -85.2202, -76.3761, -88.7361, 356, 4335466)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -94.2102, -75.9252, -73.6232, 70, 4335466)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -85.8629, -74.894, -54.5351, 46, 4335466)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -64.2663, -75.2506, -57.4962, 301, 4335466)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -61.676, -68.8122, -37.2663, 91, 4335465)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -89.2602, -62.1985, -17.8363, 108, 4335465)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -45.7687, -47.1474, -13.6456, 349, 4335464)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -49.6888, -51.4121, -91.9162, 353, 4335472)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -53.4448, -48.7313, -104.684, 258, 4335472)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -92.097, -46.5807, -109.493, 68, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -94.0482, -45.6475, -98.7228, 135, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -89.7988, -45.7746, -128.807, 345, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -94.3757, -46.415, -130.439, 7, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -83.5229, -46.8664, -146.319, 49, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -85.2858, -46.5498, -140.954, 99, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -75.0411, -46.0856, -136.802, 208, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -72.3217, -45.7884, -143.372, 283, 4335473)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -86.1057, -46.4348, -116.281, 327, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -74.1489, -46.6096, -109.123, 166, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -81.2076, -46.8335, -107.293, 346, 4335467)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -37.1925, -45.6477, -69.2966, 337, 4335464)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -22.5487, -41.9654, -61.4312, 174, 4335464)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -23.9446, -40.5436, -46.307, 350, 4335464)
        spawnMobile("dathomir", "force_corrupted_rancor_juvenile", 900, -4246.87, 27.065, -2096.83, 96, 0)

        -- Adult Spawns
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -4236.24, 26.4178,  -2093.76, 134,  0)          -- 30 minute respawns
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -4220.6,  27.4821,  -2078.59, 123,  0)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, 15.3628,  -4.58928, -7.92402, 357,  4335463)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -25.6717, -27.8963, -8.98568, 110,  4335463)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -22.3595, -35.4736, -26.175,  255,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -22.4862, -39.4535, -41.3406, 185,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -23.8141, -41.0041, -52.1821, 5,    4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -22.8994, -42.1756, -67.7313, 327,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -50.4572, -48.6915, -59.4032, 347,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -44.9102, -47.5258, -46.9131, 75,   4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -44.772,  -46.9693, -27.2762, 140,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -44.3801, -46.9693, -6.73805, 198,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -80.8216, -63.4267, -19.6059, 297,  4335465)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -92.9387, -61.7253, -9.35128, 129,  4335465)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -92.45,   -63.4149, -25.4592, 19,   4335465)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -54.728,  -68.3511, -38.2941, 280,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -52.068,  -67.7183, -48.2938, 344,  4335464)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -82.6403, -69.6366, -43.3567, 341,  4335465)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -75.3202, -75.656,  -64.4964, 184,  4335466)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -89.0824, -76.3745, -66.83,   145,  4335466)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -91.9495, -76.5151, -86.8493, 36,   4335466)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -78.5378, -78.361,  -94.7425, 177,  4335467)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -61.7091, -76.3146, -84.5361, 125,  4335466)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -53.9446, -74.6234, -104.882, 4,    4335468)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -63.2671, -66.1192, -138.523, 309,  4335468)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -90.3735, -67.0463, -137.669, 41,   4335469)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -92.6611, -66.8148, -109.672, 83,   4335467)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -112.133, -67.0514, -86.8425, 209,  4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -113.477, -66.1018, -127.419, 315,  4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -135.893, -66.8213, -125.62,  2,    4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -145.067, -67.1097, -122.222, 81,   4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -138.771, -67.1071, -89.9501, 143,  4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -171.581, -66.0935, -97.5356, 270,  4335471)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -132.333, -66.814,  -107.611, 92,   4335470)
        spawnMobile("dathomir", "force_corrupted_rancor", 1800, -69.5625, -57.8403, -8.85278, 102,  4335465)
        --
        -- Boss
        spawnMobile("dathomir", "force_corrupted_rancor_boss", 5400, -189.284, -66.3445, -102.288, 81, 4335471) -- 1.5 hour Respawn
        --

end
