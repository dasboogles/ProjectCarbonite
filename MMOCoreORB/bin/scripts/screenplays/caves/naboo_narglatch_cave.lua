NarglatchCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	--location 5840 -4635
	screenplayName = "NarglatchCaveScreenPlay",

 	lootContainers = {
		6336292,
		6336293,
		6336295,
		6336297,
		6336298
	},

	lootLevel = 16,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 160000},
				{group = "junk", chance = 8240000},
				{group = "rifles", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1800
}

registerScreenPlay("NarglatchCaveScreenPlay", true)

function NarglatchCaveScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function NarglatchCaveScreenPlay:spawnMobiles()
	spawnMobile("naboo", "narglatch_hunter", 240,  -0.5, -12.8, -6.2, 170, 5285895)
	spawnMobile("naboo", "narglatch_hunter", 240,  -1.6, -11.6, -11.9, 280, 5285895)
	spawnMobile("naboo", "narglatch_cub", 240,  19.2, -27, -10.1, 10, 5285895)
	spawnMobile("naboo", "narglatch_cub", 240,  19.8, -26, -5.9, 140, 5285895)
	spawnMobile("naboo", "narglatch_cub", 240,  25.2, -28, -10.0, 300, 5285895)
	spawnMobile("naboo", "narglatch_cub", 240,  23.6, -26, -5.7, 250, 5285895)

	spawnMobile("naboo", "narglatch_guardian", 240,  22.0, -39, -36.0, 10, 5285896)
	spawnMobile("naboo", "narglatch_guardian", 240,  26.9, -38, -34.3, 180, 5285896)
	spawnMobile("naboo", "narglatch_hunter", 240,  25.8, -41, -55.4, 160, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  21.6, -42, -66.3, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  22.7, -42, -66.9, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  24.0, -42, -67.5, 0, 5285896)

	spawnMobile("naboo", "narglatch_guardian", 240,  45.8, -47, -26.2, 0, 5285896)
	spawnMobile("naboo", "narglatch_guardian", 240,  46.2, -47, -20.7, 170, 5285896)
	spawnMobile("naboo", "female_narglatch", 240,  51.1727, -67.489, -44.9174, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  51.1845, -67.6346, -47.5875, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  51.3974, -67.6616, -48.7445, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  51.6902, -67.6934, -48.6905, 0, 5285896)
	spawnMobile("naboo", "narglatch_cub", 240,  50.7219, -67.539, -47.8711, 0, 5285896)

	spawnMobile("naboo", "female_narglatch", 240,  81.1, -62, -14.2, 100, 5285897)
	spawnMobile("naboo", "narglatch_cub", 240,  93.5, -62, -7.5, 70, 5285897)
	spawnMobile("naboo", "narglatch_cub", 240,  87.7, -62, -6.3, 330, 5285897)
	spawnMobile("naboo", "narglatch_cub", 240,  87.9, -62, -8.8, 30, 5285897)
	spawnMobile("naboo", "narglatch_cub", 240,  89.1, -62, -12.8, 180, 5285897)

	spawnMobile("naboo", "narglatch", 240,  74.7, -77, -88.6, 0, 5285898)
	spawnMobile("naboo", "narglatch", 240,  73.9, -75, -54.8, 240, 5285898)
	spawnMobile("naboo", "narglatch", 240,  83.8, -76, -57.4, 100, 5285898)
	spawnMobile("naboo", "narglatch", 240,  78.7, -76, -60.8, 10, 5285898)
	spawnMobile("naboo", "female_narglatch", 240,  72.2, -77, -90.5, 10, 5285898)

	spawnMobile("naboo", "female_narglatch", 240,  85.2, -47, -107.4, 80, 5285899)
	spawnMobile("naboo", "female_narglatch", 240,  83.7, -47, -112.8, 320, 5285899)

	spawnMobile("naboo", "narglatch", 240,  54.5, -72, -114.0, 350, 5285900)
	spawnMobile("naboo", "narglatch", 240,  56.1, -71, -118.3, 300, 5285900)
	spawnMobile("naboo", "narglatch", 240,  58.6, -70.6, -120.8, 110, 5285900)

	spawnMobile("naboo", "female_narglatch", 240,  79.8, -66, -137.8, 70, 5285901)
	spawnMobile("naboo", "female_narglatch", 240,  78.3, -66, -142.7, 100, 5285901)
	spawnMobile("naboo", "narglatch_cub", 240,  90.0, -66, -140.8, 250, 5285901)
	spawnMobile("naboo", "narglatch_cub", 240,  92.5, -66, -135.8, 10, 5285901)
	spawnMobile("naboo", "narglatch_cub", 240,  90.5, -66, -137.3, 240, 5285901)
	spawnMobile("naboo", "narglatch_cub", 240,  87.7, -66, -134.7, 190, 5285901)

	spawnMobile("naboo", "narglatch", 240,  145.6, -66, -100.3, 260, 5285902)
	spawnMobile("naboo", "narglatch", 240,  146.0, -66, -93.3, 160, 5285902)
	spawnMobile("naboo", "narglatch", 240,  152.3, -66, -94.8, 270, 5285902)
	spawnMobile("naboo", "narglatch", 240,  155.0, -66, -100.4, 10, 5285902)
	spawnMobile("naboo", "narglatch", 240,  111.3, -66, -100.8, 200, 5285902)
	spawnMobile("naboo", "narglatch", 240,  111.5, -66, -111.5, 190, 5285902)
	spawnMobile("naboo", "narglatch", 240,  105.5, -66, -107.6, 210, 5285902)
	spawnMobile("naboo", "narglatch", 240,  111.1, -66, -106.8, 80, 5285902)
	spawnMobile("naboo", "female_narglatch", 240,  129.2, -66, -89.3, 230, 5285902)
	spawnMobile("naboo", "female_narglatch", 240,  119.4, -66, -86.9, 270, 5285902)
	spawnMobile("naboo", "female_narglatch", 240,  136.3, -66, -120.5, 20, 5285902)
	spawnMobile("naboo", "female_narglatch", 240,  128.8, -66, -106.3, 150, 5285902)

	spawnMobile("naboo", "narglatch_matriarch", 240,  190.2, -66, -101.4, 100, 5285903)
	spawnMobile("naboo", "narglatch", 240,  188.4, -66, -96.0, 50, 5285903)
	spawnMobile("naboo", "narglatch_cub", 240,  195.3, -66, -102.1, 120, 5285903)
	spawnMobile("naboo", "narglatch_cub", 240,  194.5, -66, -98.0, 340, 5285903)
	spawnMobile("naboo", "narglatch_cub", 240,  187.0, -66, -100.6, 230, 5285903)
	spawnMobile("naboo", "narglatch_cub", 240,  186.6, -66, -106.8, 80, 5285903)

	spawnMobile("naboo", "narglatch_cub", 240,  55.7, -48, -105.2, 160, 5285904)
	spawnMobile("naboo", "narglatch_cub", 240,  51.5, -48, -105.1, 110, 5285904)
	spawnMobile("naboo", "narglatch_cub", 240,  54.8, -48, -101.8, 150, 5285904)
	spawnMobile("naboo", "narglatch_cub", 240,  59.7, -48, -107.3, 40, 5285904)
	spawnMobile("naboo", "narglatch_guardian", 240,  47.4, -51, -84.6, 350, 5285904)
	spawnMobile("naboo", "narglatch_guardian", 240,  52.8, -51, -84.5, 0, 5285904)
	spawnMobile("naboo", "narglatch_guardian", 240,  48.7, -51, -86.5, 190, 5285904)

	spawnMobile("naboo", "narglatch_cub", 240,  78.8, -46, -140.8, 60, 5285905)
	spawnMobile("naboo", "narglatch_cub", 240,  76.2, -46, -136.6, 90, 5285905)
	spawnMobile("naboo", "female_narglatch", 240,  83.8, -46, -138.4, 40, 5285905)
	spawnMobile("naboo", "narglatch", 240,  92.2, -46, -142.0, 0, 5285905)
	spawnMobile("naboo", "narglatch", 240,  82.0, -46, -144.7, 0, 5285905)

	-- Carbonite Enhancement
	spawnMobile("naboo", "narglatch", 240, 0.456557, -13.228, -9.55316, 277, 5285895)
	spawnMobile("naboo", "narglatch", 240, -4.16556, -10.6768, -7.61501, 114, 5285895)
	spawnMobile("naboo", "narglatch", 240, 10.3237, -19.8277, -10.961, 259, 5285895)
	spawnMobile("naboo", "narglatch", 240, 11.5199, -22.0713, -5.56659, 274, 5285895)
	spawnMobile("naboo", "narglatch", 240, 22.0851, -27.9954, -10.013, 357, 5285895)
	spawnMobile("naboo", "narglatch", 240, 23.7959, -35.7859, -24.9998, 181, 5285896)
	spawnMobile("naboo", "narglatch", 240, 25.6146, -36.8267, -27.5947, 220, 5285896)
	spawnMobile("naboo", "narglatch", 240, 22.5213, -40.7444, -50.3893, 356, 5285896)
	spawnMobile("naboo", "narglatch", 240, 23.2244, -42.301, -63.8365, 191, 5285896)
	spawnMobile("naboo", "narglatch", 240, 50.0654, -48.0045, -68.4963, 116, 5285896)
	spawnMobile("naboo", "narglatch", 240, 51.2627, -48.1168, -67.6059, 180, 5285896)
	spawnMobile("naboo", "narglatch", 240, 51.4699, -47.569, -71.0994, 355, 5285896)
	spawnMobile("naboo", "narglatch", 240, 53.0819, -48.5729, -57.6912, 252, 5285896)
	spawnMobile("naboo", "narglatch", 240, 41.9428, -46.9281, -54.1329, 141, 5285896)
	spawnMobile("naboo", "narglatch", 240, 45.5014, -47.7027, -37.3646, 185, 5285896)
	spawnMobile("naboo", "narglatch", 240, 42.3493, -47.4437, -36.4398, 199, 5285896)
	spawnMobile("naboo", "narglatch", 240, 43.5543, -46.2095, -24.1332, 73, 5285896)
	spawnMobile("naboo", "narglatch", 240, 43.7107, -46.1667, -21.9821, 120, 5285896)
	spawnMobile("naboo", "narglatch", 240, 48.9578, -47.9368, -22.6411, 253, 5285896)
	spawnMobile("naboo", "narglatch", 240, 48.2647, -48.089, -24.932, 304, 5285896)
	spawnMobile("naboo", "narglatch", 240, 43.0488, -46.744, -5.33412, 146, 5285896)
	spawnMobile("naboo", "narglatch", 240, 40.4623, -45.5774, -6.53423, 167, 5285896)
	spawnMobile("naboo", "narglatch", 240, 41.1226, -46.304, -9.45151, 106, 5285896)
	spawnMobile("naboo", "narglatch", 240, 44.5497, -47.1608, -9.4059, 305, 5285896)
	spawnMobile("naboo", "narglatch", 240, 84.1604, -61.3744, -7.43844, 94, 5285897)
	spawnMobile("naboo", "narglatch", 240, 92.5876, -61.7976, -13.7122, 354, 5285897)
	spawnMobile("naboo", "narglatch", 240, 65.8871, -56.702, -18.9511, 266, 5285897)
	spawnMobile("naboo", "narglatch", 240, 65.5176, -55.124, -12.142, 268, 5285897)
	spawnMobile("naboo", "narglatch", 240, 65.153, -54.8856, -6.12986, 241, 5285897)
	spawnMobile("naboo", "narglatch", 240, 53.7995, -67.9651, -46.6281, 37, 5285896)
	spawnMobile("naboo", "narglatch", 240, 51.9851, -67.8512, -40.3976, 189, 5285896)
	spawnMobile("naboo", "narglatch", 240, 55.913, -68.4448, -41.9538, 235, 5285896)
	spawnMobile("naboo", "narglatch", 240, 61.6349, -75.4675, -67.2506, 32, 5285898)
	spawnMobile("naboo", "narglatch", 240, 64.1623, -75.6391, -67.976, 350, 5285898)
	spawnMobile("naboo", "narglatch", 240, 64.3092, -75.4227, -63.2842, 191, 5285898)
	spawnMobile("naboo", "narglatch", 240, 96.4948, -75.2413, -62.1278, 224, 5285898)
	spawnMobile("naboo", "narglatch", 240, 95.6637, -75.5725, -64.7316, 10, 5285898)
	spawnMobile("naboo", "narglatch", 240, 94.4735, -75.7289, -63.0916, 103, 5285898)
	spawnMobile("naboo", "narglatch", 240, 94.4416, -76.4937, -87.4497, 332, 5285898)
	spawnMobile("naboo", "narglatch", 240, 74.2057, -77.9084, -92.3992, 354, 5285899)
	spawnMobile("naboo", "narglatch", 240, 82.532, -76.9166, -91.1349, 352, 5285898)
	spawnMobile("naboo", "narglatch", 240, 88.5917, -75.8942, -88.4679, 338, 5285898)
	spawnMobile("naboo", "narglatch", 240, 59.2123, -76.8885, -88.3034, 63, 5285898)
	spawnMobile("naboo", "narglatch", 240, 59.4906, -76.0823, -84.001, 63, 5285898)
	spawnMobile("naboo", "narglatch", 240, 53.1507, -72.0563, -111.754, 176, 5285900)
	spawnMobile("naboo", "narglatch", 240, 60.7864, -70.0975, -122.84, 157, 5285900)
	spawnMobile("naboo", "narglatch", 240, 70.7893, -66.2701, -139.1, 98, 5285901)
	spawnMobile("naboo", "narglatch", 240, 90.5619, -67.1194, -131.684, 217, 5285901)
	spawnMobile("naboo", "narglatch", 240, 94.973, -66.108, -115.912, 198, 5285899)
	spawnMobile("naboo", "narglatch", 240, 91.0578, -66.8797, -116.161, 182, 5285899)
	spawnMobile("naboo", "narglatch", 240, 98.1122, -66.3116, -105.826, 93, 5285899)
	spawnMobile("naboo", "narglatch", 240, 98.636, -65.768, -110.183, 126, 5285899)
	spawnMobile("naboo", "narglatch", 240, 113.596, -66.1232, -127.51, 108, 5285902)
	spawnMobile("naboo", "narglatch", 240, 119.18, -66.7819, -128.953, 33, 5285902)
	spawnMobile("naboo", "narglatch", 240, 154.903, -65.6965, -129.622, 284, 5285902)
	spawnMobile("naboo", "narglatch", 240, 155.068, -65.6022, -125.479, 280, 5285902)
	spawnMobile("naboo", "narglatch", 240, 151.66, -66.1851, -127.658, 100, 5285902)
	spawnMobile("naboo", "narglatch", 240, 153.109, -66.5798, -122.243, 154, 5285902)
	spawnMobile("naboo", "narglatch", 240, 146.698, -66.0371, -130.095, 76, 5285902)
	spawnMobile("naboo", "narglatch", 240, 137.916, -65.8893, -114.067, 297, 5285902)
	spawnMobile("naboo", "narglatch", 240, 132.7, -66.4447, -103.792, 251, 5285902)
	spawnMobile("naboo", "narglatch", 240, 130.722, -66.4341, -101.336, 205, 5285902)
	spawnMobile("naboo", "narglatch", 240, 137.036, -67.1546, -90.6507, 37, 5285902)
	spawnMobile("naboo", "narglatch", 240, 144.257, -66.4626, -88.9101, 307, 5285902)
	spawnMobile("naboo", "narglatch", 240, 140.173, -66.6241, -85.6138, 185, 5285902)
	spawnMobile("naboo", "narglatch", 240, 164.79, -66.9215, -95.2649, 267, 5285903)
	spawnMobile("naboo", "narglatch", 240, 165.297, -66.7475, -98.8199, 267, 5285903)
	spawnMobile("naboo", "narglatch", 240, 176.742, -66.1209, -99.1332, 99, 5285903)
	spawnMobile("naboo", "narglatch", 240, 177.324, -66.0079, -95.4437, 103, 5285903)
	spawnMobile("naboo", "narglatch", 240, 51.2538, -76.4595, -87.3138, 73, 5285900)
	spawnMobile("naboo", "narglatch", 240, 80.4408, -68.2292, -39.2773, 46, 5285897)
	spawnMobile("naboo", "narglatch", 240, 87.59, -68, -40.6811, 347, 5285897)
	spawnMobile("naboo", "narglatch", 240, 85.0943, -66.8158, -35.954, 208, 5285897)
	spawnMobile("naboo", "narglatch", 240, 52.0052, -48.7971, -102.691, 142, 5285904)
	spawnMobile("naboo", "narglatch", 240, 61.0501, -47.6252, -103.503, 273, 5285904)
	spawnMobile("naboo", "narglatch", 240, 92.6014, -46.2396, -95.7734, 196, 5285899)
	spawnMobile("naboo", "narglatch", 240, 95.6368, -45.6353, -97.3214, 210, 5285899)
	spawnMobile("naboo", "narglatch", 240, 94.5034, -46.4051, -122.879, 356, 5285899)
	spawnMobile("naboo", "narglatch", 240, 89.1762, -45.7205, -122.348, 356, 5285899)
	spawnMobile("naboo", "narglatch", 240, 91.0188, -46.3215, -130.607, 207, 5285905)
	spawnMobile("naboo", "narglatch", 240, 93.9542, -46.5645, -134.414, 228, 5285905)
	spawnMobile("naboo", "narglatch", 240, 91.8283, -46.3308, -147.933, 307, 5285905)
	spawnMobile("naboo", "narglatch", 240, 73.1876, -45.9184, -144.846, 63, 5285905)
	spawnMobile("naboo", "narglatch", 240, 72.9697, -45.8119, -140.421, 102, 5285905)
	spawnMobile("naboo", "narglatch", 240, 94.4357, -46.1429, -107.829, 265, 5285899)
	spawnMobile("naboo", "narglatch", 240, 94.2107, -46.8449, -111.559, 271, 5285899)
	spawnMobile("naboo", "narglatch", 240, 70.3871, -46.5194, -105.92, 278, 5285899)
	spawnMobile("naboo", "narglatch", 240, 69.4606, -46.9436, -109.301, 279, 5285899)
	-- Carbonite Enhancement
end
