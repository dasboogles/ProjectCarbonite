ForceCrystalCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "ForceCrystalCaveScreenPlay",

	lootContainers = {
		200335,
		200336,		
		8535511			
	},
	
	lootLevel = 500, -- Super high chance of Yellow crystals!	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 8000000
		}				
	},
	
	lootContainerRespawn = 900 -- 30 minutes -> 15 minutes
}

registerScreenPlay("ForceCrystalCaveScreenPlay", true)

function ForceCrystalCaveScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function ForceCrystalCaveScreenPlay:spawnMobiles()   
	spawnMobile("dantooine", "force_crystal_hunter", 300,89,-62,-13.4,-139,8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300,52.5,-67.9,-42.9,32,8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300,76.3,-77,-89.3,-81,8535486)
	
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300,26.1,-43,-68.3,84,8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300,64.1,-68.9,-36.8,86,8535485)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300,85.3,-77.2,-62.9,-57,8535486)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300,69.3,-75.7,-65.4,30,8535486)
	
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,0.7,-13.6,-6.9,-82,8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,65.6,-77,-78.4,-10,8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,23.8,-38.4,-32.8,-2,8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,22.4,-42.1,-64.1,38,8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,49.8,-48.5,-65.6,-51,8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300,49.7,-48,-17.7,167,8535484)

	-- Custom Carbonite Pass
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, -14.3594, -4.31251, -1.87197, 337, 8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, -18.8838, -3.4666, -3.28765, 337, 8535483)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, -15.3095, -4.8627, -9.25912, 129, 8535483)
	spawnMobile("dantooine", "force_crystal_hunter", 300, -13.4116, -5.21921, -8.97946, 207, 8535483)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 8.87888, -20.4103, -5.41186, 65, 8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 11.324, -21.8254, -6.38645, 346, 8535483)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 9.70762, -19.1217, -11.4579, 157, 8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 23.3438, -25.6128, -4.80149, 90, 8535483)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 25.291, -27.2918, -7.37353, 19, 8535483)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 25.9025, -28.4641, -10.7612, 154, 8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 25.7323, -29.6015, -13.8281, 52, 8535483)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 21.9347, -28.9308, -12.9554, 231, 8535483)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 21.7791, -30.0453, -15.4087, 305, 8535483)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 25.9979, -37.9628, -32.2122, 265, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 26.9855, -39.1912, -39.5321, 108, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 27.2514, -40.018, -43.2932, 69, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 27.3466, -41.0191, -52.3208, 115, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 27.2635, -41.2756, -56.7727, 60, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 25.6366, -41.7855, -59.9783, 140, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 25.8329, -42.5097, -63.7395, 35, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 28.3118, -42.5486, -63.7942, 337, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 47.5425, -48.4374, -62.4646, 341, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 45.127, -47.5211, -60.3221, 92, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 46.116, -47.796, -57.2499, 128, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 49.1126, -48.5771, -56.8544, 189, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 51.6143, -48.6978, -56.3129, 116, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 54.4882, -48.9932, -55.0961, 185, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 51.9074, -48.766, -59.888, 200, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 52.2444, -48.5123, -65.1881, 17, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 50.7959, -48.7849, -63.3308, 13, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 53.6506, -47.8061, -67.9764, 182, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 46.851, -47.7784, -69.5771, 169, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 41.0015, -47.7754, -42.4731, 280, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 40.8119, -47.3589, -39.0413, 245, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 40.4499, -46.4726, -30.4608, 291, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 39.5534, -46.0303, -27.217, 235, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 41.1294, -45.4172, -24.9042, 1, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 41.6039, -45.1879, -22.6041, 204, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 46.2158, -47.0358, -15.7336, 0, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 48.7394, -47.3981, -13.363, 268, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 48.3535, -47.2222, -10.2734, 285, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 48.6268, -47.079, -7.65917, 308, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 48.9755, -46.8365, -5.65561, 263, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 40.0462, -46.0297, -11.0611, 285, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 40.391, -45.734, -8.00824, 242, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 55.6049, -49.8364, -8.10211, 334, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 56.3933, -50.0521, -5.39188, 254, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 88.1421, -60.5061, -6.15045, 89, 8535485)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 89.8707, -61.2294, -8.27376, 29, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 91.8313, -61.7182, -9.77203, 44, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 94.0561, -61.6062, -10.4796, 13, 8535485)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 94.1829, -61.8701, -12.9915, 90, 8535485)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 94.768, -63.3013, -26.4629, 128, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 95.1273, -64.161, -29.7285, 55, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 54.7114, -68.0451, -36.1262, 228, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 55.1952, -68.397, -38.2842, 246, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 57.6127, -68.6037, -41.6451, 207, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 54.563, -68.243, -42.5632, 137, 8535484)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 51.7402, -67.7046, -46.9451, 152, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 54.1136, -67.889, -47.2284, 215, 8535484)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 90.962, -76.5188, -61.5191, 167, 8535486)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 86.5696, -76.5689, -65.3172, 79, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 90.731, -76.2311, -70.4039, 353, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 64.7993, -75.3575, -58.8067, 288, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 60.2278, -75.4995, -62.4757, 348, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 65.5421, -75.3339, -62.2921, 350, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 67.7458, -75.541, -57.3843, 277, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 68.2318, -76.8173, -70.6365, 142, 8535486)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 72.6289, -77.0075, -69.5295, 157, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 80.0157, -76.6911, -68.4798, 177, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 85.7831, -76.8737, -70.9346, 220, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 90.7067, -76.7632, -78.2892, 269, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 87.8029, -76.5943, -83.9058, 301, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 81.6456, -76.9206, -85.5505, 339, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 77.0144, -76.8167, -87.2528, 350, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 71.87, -77.0267, -86.4258, 15, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 67.8312, -76.8716, -82.877, 49, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 60.6198, -75.9804, -81.3266, 205, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 63.6664, -76.4152, -86.3277, 247, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 65.1354, -76.8341, -88.7597, 266, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 63.5559, -76.5802, -83.0865, 248, 8535486)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 79.5729, -76.1431, -65.255, 112, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 54.9832, -49.3931, -26.538, 42, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 54.8154, -49.9655, -23.8675, 129, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 57.0529, -50.6692, -23.1909, 199, 8535484)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 87.7336, -62.1624, -14.878, 46, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 80.6709, -66.5732, -32.0635, 21, 8535485)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 85.9323, -65.3407, -30.6255, 2, 8535485)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 85.2443, -69.7486, -44.7173, 196, 8535485)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 73.0198, -71.1628, -44.44, 151, 8535485)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 96.0247, -73.2296, -55.406, 229, 8535486)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 95.1544, -75.7434, -82.1757, 182, 8535486)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 90.943, -76.2867, -83.2324, 192, 8535486)
	spawnMobile("dantooine", "force_sensitive_crypt_crawler", 300, 84.599, -78.3111, -97.0851, 198, 8535487)
	spawnMobile("dantooine", "force_crystal_hunter", 300, 78.7467, -78.8822, -96.1245, 165, 8535487)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 73.8279, -78.5866, -97.0054, 149, 8535487)
	spawnMobile("dantooine", "untrained_wielder_of_the_dark_side", 300, 69.6065, -76.8835, -98.286, 192, 8535487)
	-- Custom Carbonite Pass
end
