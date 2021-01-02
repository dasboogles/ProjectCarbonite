JantaCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JantaCaveScreenPlay",

	lootContainers = {
		529346,
        	529349,
        	529353,
        	529363,
        	529368
	},
	
	lootLevel = 100,	

	lootGroups = {
		{
			groups = {
				{group = "high_end_weapons_all", chance = 2500000},
				{group = "armor_all", chance = 2500000},
				{group = "color_crystals", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}					
	},
	
	lootContainerRespawn = 900 
}

registerScreenPlay("JantaCaveScreenPlay", true)

function JantaCaveScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function JantaCaveScreenPlay:spawnMobiles()
	spawnMobile("dantooine", "janta_clan_leader",300,-91.6,-100.4,-93.6,-178,529333)

	spawnMobile("dantooine", "janta_harvester",300,6.9,-40.8,-73.5,-3,529325)
	spawnMobile("dantooine", "janta_harvester",300,-5.5,-64.9,-240.8,-83,529329)
	spawnMobile("dantooine", "janta_harvester",300,-94.6,-73.7,-163.4,-174,529330)
	spawnMobile("dantooine", "janta_harvester",300,-98.9,-73.3,-165.8,130,529330)

	spawnMobile("dantooine", "janta_herbalist",300,-9,-40.5,-71.6,77,529325)
	spawnMobile("dantooine", "janta_herbalist",300,-3.5,-40.5,-75.2,5,529325)
	spawnMobile("dantooine", "janta_herbalist",300,-96.6,-102.4,-138.3,103,529330)
	spawnMobile("dantooine", "janta_herbalist",300,-87.6,-101.9,-136.5,163,529330)

	spawnMobile("dantooine", "janta_hunter",300,65.7,-54.5,-152.7,-101,529327)
	spawnMobile("dantooine", "janta_hunter",300,-5.4,-64.2,-234.8,-43,529329)
	spawnMobile("dantooine", "janta_hunter",300,-97.6,-72.7,-174.4,71,529330)
	spawnMobile("dantooine", "janta_hunter",300,-32.3,-70.8,-85.9,-168,529331)

	spawnMobile("dantooine", "janta_loreweaver",300,49.9,-46.2,-62.6,-99,529326)
	spawnMobile("dantooine", "janta_loreweaver",300,46.4,-46.3,-60.5,-105,529326)
	spawnMobile("dantooine", "janta_loreweaver",300,41.9,-46.1,-98,-22,529326)
	spawnMobile("dantooine", "janta_loreweaver",300,-28.7,-80.1,-148.5,11,529332)

	spawnMobile("dantooine", "janta_primalist",300,45.4,-46.2,-93.1,-21,529326)
	spawnMobile("dantooine", "janta_primalist",300,58.3,-46.9,-123.3,-103,529327)
	spawnMobile("dantooine", "janta_primalist",300,58.5,-47.8,-127,-91,529327)
	spawnMobile("dantooine", "janta_primalist",300,-68.8,-70.2,-88.8,63,529331)

	spawnMobile("dantooine", "janta_rockshaper",300,-6.6,-45.4,-145.1,22,529327)
	spawnMobile("dantooine", "janta_rockshaper",300,-14.9,-63.7,-259.9,1,529329)
	spawnMobile("dantooine", "janta_rockshaper",300,-9.7,-63.8,-260.6,-9,529329)
	spawnMobile("dantooine", "janta_rockshaper",300,-21.5,-79.5,-143.4,-32,529332)

	spawnMobile("dantooine", "janta_scout",300,-0.9,-45,-141.7,18,529327)
	spawnMobile("dantooine", "janta_scout",300,-4.8,-65.5,-209.6,-94,529329)
	spawnMobile("dantooine", "janta_scout",300,-94.5,-101.9,-143.1,87,529330)
	spawnMobile("dantooine", "janta_scout",300,-113.9,-69.4,-124.1,88,529330)

	spawnMobile("dantooine", "janta_shaman",300,-59.6,-70.9,-180.4,-95,529330)
	spawnMobile("dantooine", "janta_shaman",300,-63.8,-69.9,-171.1,-131,529330)
	spawnMobile("dantooine", "janta_shaman",300,-26.1,-70.9,-148.2,-46,529332)

	spawnMobile("dantooine", "janta_soothsayer",300,-10.9,-64,-183.5,79,529328)
	spawnMobile("dantooine", "janta_soothsayer",300,-0.8,-65.7,-211.8,-91,529329)
	spawnMobile("dantooine", "janta_soothsayer",300,-29.2,-70.4,-87.1,166,529331)
	spawnMobile("dantooine", "janta_soothsayer",300,-25.4,-69.7,-91.3,-55,529331)

	spawnMobile("dantooine", "janta_tribesman",300,11,-40.9,-69.7,-58,529325)
	spawnMobile("dantooine", "janta_tribesman",300,60.3,-55.7,-154.6,72,529327)
	spawnMobile("dantooine", "janta_tribesman",300,-8.2,-64,-229.5,-76,529329)
	spawnMobile("dantooine", "janta_tribesman",300,-62.2,-70.3,-87.2,-136,529331)

	spawnMobile("dantooine", "janta_warrior",300,67,-54.8,-156.2,-85,529327)
	spawnMobile("dantooine", "janta_warrior",300,-93,-70.4,-123.2,-96,529330)
	spawnMobile("dantooine", "janta_warrior",300,-84.9,-100.1,-97.2,-109,529333)
	spawnMobile("dantooine", "janta_warrior",300,-98,-100.5,-100.5,79,529333)

	-- Carbonite Minor-Refactor
	spawnMobile("dantooine", "janta_shaman",300, -2.37638, -13.0952, -7.22491, 32, 529323)
	spawnMobile("dantooine", "janta_scout",300, 10.6836, -13.4872, -4.25433, 270, 529323)
	spawnMobile("dantooine", "janta_warrior",300, 10.1714, -18.2993, -14.0711, 315, 529323)
	spawnMobile("dantooine", "janta_tribesman",300, 8.72616, -17.8574, -13.4177, 117, 529323)
	spawnMobile("dantooine", "janta_rockshaper",300, 12.1169, -23.4559, -26.8767, 195, 529324)
	spawnMobile("dantooine", "janta_warrior",300, 10.1082, -23.7983, -28.0662, 129, 529324)
	spawnMobile("dantooine", "janta_tribesman",300, -4.59891, -29.7961, -26.5805, 247, 529324)
	spawnMobile("dantooine", "janta_primalist",300, -6.91023, -30.4727, -30.0177, 317, 529324)
	spawnMobile("dantooine", "janta_rockshaper",300, -9.08479, -30.9272, -30.4536, 3, 529324)
	spawnMobile("dantooine", "janta_shaman",300, -7.37099, -39.7148, -56.5528, 357, 529325)
	spawnMobile("dantooine", "janta_scout",300, -10.6636, -39.8083, -56.523, 357, 529325)
	spawnMobile("dantooine", "janta_loreweaver",300, 10.0333, -40.6281, -72.7549, 129, 529325)
	spawnMobile("dantooine", "janta_warrior",300, 15.5968, -40.6921, -73.3131, 129, 529325)
	spawnMobile("dantooine", "janta_clan_leader",300, 17.2509, -41.0148, -71.6853, 134, 529325)
	spawnMobile("dantooine", "janta_tribesman",300, 15.8357, -41.1977, -70.2114, 219, 529325)
	spawnMobile("dantooine", "janta_tribesman",300, 7.37223, -40.6265, -78.2128, 165, 529325)
	spawnMobile("dantooine", "janta_warrior",300, 12.5987, -40.1171, -79.9494, 155, 529325)
	spawnMobile("dantooine", "janta_shaman",300, 20.425, -39.1337, -80.0078, 184, 529325)
	spawnMobile("dantooine", "janta_loreweaver",300, 17.9809, -38.9383, -82.3616, 71, 529325)
	spawnMobile("dantooine", "janta_scout",300, -7.66466, -40.519, -84.8265, 192, 529325)
	spawnMobile("dantooine", "janta_primalist",300, -11.8102, -40.4681, -82.7648, 137, 529325)
	spawnMobile("dantooine", "janta_rockshaper",300, 43.2893, -46.6451, -54.6246, 65, 529326)
	spawnMobile("dantooine", "janta_warrior",300, 42.0925, -46.1142, -47.6814, 248, 529326)
	spawnMobile("dantooine", "janta_tribesman",300, 42.0619, -47.1118, -80.0362, 356, 529326)
	spawnMobile("dantooine", "janta_tribesman",300, 38.0619, -45.8393, -79.4116, 2, 529326)
	spawnMobile("dantooine", "janta_harvester",300, 50.7294, -46.0355, -94.1042, 168, 529326)
	spawnMobile("dantooine", "janta_scout",300, 48.6908, -46.0986, -97.5144, 84, 529326)
	spawnMobile("dantooine", "janta_shaman",300, -2.84833, -45.0968, -137.8, 217, 529327)
	spawnMobile("dantooine", "janta_loreweaver",300, -8.24335, -44.8671, -138.093, 144, 529327)
	spawnMobile("dantooine", "janta_rockshaper",300, 61.064, -45.4694, -119.903, 110, 529327)
	spawnMobile("dantooine", "janta_warrior",300, 61.5336, -48.4472, -130.731, 39, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 38.0094, -49.6529, -135.078, 167, 529327)
	spawnMobile("dantooine", "janta_warrior",300, 23.6713, -50.0329, -138.902, 324, 529327)
	spawnMobile("dantooine", "janta_primalist",300, 37.6073, -50.833, -138.321, 37, 529327)
	spawnMobile("dantooine", "janta_warrior",300, -5.10742, -45.1089, -136.576, 184, 529327)
	spawnMobile("dantooine", "janta_clan_leader",300, -7.30089, -46.3979, -149.557, 149, 529327)
	spawnMobile("dantooine", "janta_rockshaper",300, -1.75241, -45.5563, -146.299, 142, 529327)
	spawnMobile("dantooine", "janta_tribesman",300, 1.3726, -45.1282, -144.414, 87, 529327)
	spawnMobile("dantooine", "janta_tribesman",300, 1.02629, -45.415, -146.198, 82, 529327)
	spawnMobile("dantooine", "janta_scout",300, 1.32449, -46.0195, -150.735, 223, 529327)
	spawnMobile("dantooine", "janta_harvester",300, 44.767, -56.6686, -165.027, 149, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 42.1697, -57.3285, -169.53, 117, 529327)
	spawnMobile("dantooine", "janta_loreweaver",300, 40.5789, -57.4534, -175.131, 89, 529327)
	spawnMobile("dantooine", "janta_rockshaper",300, 44.1732, -56.3174, -180.796, 43, 529327)
	spawnMobile("dantooine", "janta_scout",300, 49.7649, -56.5721, -182.969, 1, 529327)
	spawnMobile("dantooine", "janta_primalist",300, 55.2445, -56.8096, -181.164, 316, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 57.2548, -56.675, -177.36, 308, 529327)
	spawnMobile("dantooine", "janta_warrior",300, 57.6902, -56.7168, -173.125, 267, 529327)
	spawnMobile("dantooine", "janta_tribesman",300, 56.2734, -56.6292, -169.341, 239, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 53.2226, -56.6798, -166.43, 206, 529327)
	spawnMobile("dantooine", "janta_clan_leader",300, 49.1254, -56.726, -166.008, 182, 529327)
	-- After Pillar
	spawnMobile("dantooine", "janta_harvester",300, 11.9618, -63.9589, -179.897, 80, 529328)
	spawnMobile("dantooine", "janta_loreweaver",300, 12.4156, -63.4438, -184.452, 85, 529328)

	spawnMobile("dantooine", "janta_harvester",300, -11.9065, -64.132, -180.154, 279, 529328)
	spawnMobile("dantooine", "janta_scout",300, -23.9611, -63.9699, -182.183, 267, 529328)
	spawnMobile("dantooine", "janta_shaman",300, -24.8892, -64.9231, -178.216, 257, 529328)
	spawnMobile("dantooine", "janta_loreweaver",300, -12.1575, -64.5526, -200.812, 3, 529328)
	spawnMobile("dantooine", "janta_warrior",300, -8.69479, -65.0106, -199.961, 3, 529328)
	spawnMobile("dantooine", "janta_tribesman",300, -21.6667, -65.0267, -213.214, 145, 529329)
	spawnMobile("dantooine", "janta_shaman",300, -21.7511, -64.5527, -223.288, 64, 529329)
	spawnMobile("dantooine", "janta_rockshaper",300, -1.08591, -63.9061, -230.108, 99, 529329)
	spawnMobile("dantooine", "janta_primalist",300, -0.865887, -63.6763, -232.395, 70, 529329)
	spawnMobile("dantooine", "janta_shaman",300, -23.3564, -63.4344, -257.724, 167, 529329)
	spawnMobile("dantooine", "janta_harvester",300, -21.5942, -63.5329, -257.374, 179, 529329)
	spawnMobile("dantooine", "janta_warrior",300, -24.4948, -65.1442, -239.167, 117, 529329)
	spawnMobile("dantooine", "janta_loreweaver",300, -24.5569, -65.2038, -240.874, 63, 529329)
	spawnMobile("dantooine", "janta_warrior",300, -22.6082, -65.5759, -239.926, 272, 529329)
	spawnMobile("dantooine", "janta_harvester",300, -19.5473, -65.0221, -217.546, 251, 529329)
	spawnMobile("dantooine", "janta_scout",300, -19.5097, -64.6363, -219.481, 292, 529329)
	spawnMobile("dantooine", "janta_tribesman",300, 0.0929104, -64.535, -208.487, 248, 529329)
	spawnMobile("dantooine", "janta_tribesman",300, -1.63552, -65.3242, -210.191, 39, 529329)
	spawnMobile("dantooine", "janta_harvester",300, -52.6128, -70.703, -183.696, 303, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -55.4068, -71.1218, -184.365, 6, 529330)
	spawnMobile("dantooine", "janta_primalist",300, -55.993, -70.8093, -179.098, 153, 529330)
	spawnMobile("dantooine", "janta_rockshaper",300, -75.4783, -69.4344, -198.041, 319, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -79.1536, -69.3503, -200.828, 342, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -61.6967, -70.0543, -200.223, 35, 529330)
	spawnMobile("dantooine", "janta_loreweaver",300, -61.6009, -70.1334, -198.181, 135, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -59.5656, -69.9062, -198.908, 245, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -71.9754, -70.8809, -154.998, 10, 529330)
	spawnMobile("dantooine", "janta_warrior",300, -68.9763, -70.8176, -154.864, 321, 529330)
	spawnMobile("dantooine", "janta_scout",300, -91.4336, -73.2167, -171.87, 259, 529330)
	spawnMobile("dantooine", "janta_clan_leader",300, -93.7485, -73.3579, -175.171, 332, 529330)
	spawnMobile("dantooine", "janta_rockshaper",300, -96.4578, -72.9761, -175.162, 26, 529330)
	spawnMobile("dantooine", "janta_warrior",300, -98.4357, -72.8152, -171.864, 76, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -96.7947, -73.4262, -169.613, 236, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -98.078, -73.0203, -170.566, 49, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -94.342, -73.9467, -168.38, 175, 529330)
	spawnMobile("dantooine", "janta_primalist",300, -91.4486, -73.4176, -168.942, 42, 529330)
	spawnMobile("dantooine", "janta_loreweaver",300, -114.07, -69.1385, -168.719, 263, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -114.98, -69.124, -171.531, 274, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -79.1817, -70.7148, -168.191, 92, 529330)
	spawnMobile("dantooine", "janta_scout",300, -78.7589, -69.9173, -172.201, 92, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -98.3416, -69.158, -138.135, 4, 529330)
	spawnMobile("dantooine", "janta_rockshaper",300, -101.53, -69.1045, -137.934, 354, 529330)
	spawnMobile("dantooine", "janta_warrior",300, -85.6567, -69.2129, -103.262, 282, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -87.8996, -69.8156, -99.802, 235, 529330)
	spawnMobile("dantooine", "janta_loreweaver",300, -90.8036, -69.8164, -96.1658, 249, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -94.3881, -69.6612, -94.8513, 212, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -99.9438, -69.5136, -92.3698, 278, 529330)
	spawnMobile("dantooine", "janta_primalist",300, -102.222, -69.184, -91.4547, 107, 529330)
	spawnMobile("dantooine", "janta_clan_leader",300, -99.3227, -69.394, -95.9436, 161, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -102.442, -68.7596, -97.5039, 169, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -69.7705, -70.5997, -84.6235, 318, 529331)
	spawnMobile("dantooine", "janta_warrior",300, -68.0618, -70.8589, -82.6949, 357, 529331)
	spawnMobile("dantooine", "janta_rockshaper",300, -65.657, -70.8055, -80.346, 2, 529331)
	spawnMobile("dantooine", "janta_shaman",300, -64.5956, -70.7683, -81.1532, 40, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -50.0959, -69.5725, -85.0942, 200, 529331)
	spawnMobile("dantooine", "janta_scout",300, -47.5002, -69.4071, -92.6103, 268, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -48.9531, -68.9397, -99.049, 280, 529331)
	spawnMobile("dantooine", "janta_loreweaver",300, -53.5109, -68.6167, -102.37, 1, 529331)
	spawnMobile("dantooine", "janta_tribesman",300, -57.4625, -68.5852, -98.6375, 62, 529331)
	spawnMobile("dantooine", "janta_tribesman",300, -58.1413, -69.0704, -92.9119, 89, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -56.962, -70.0088, -87.7732, 126, 529331)
	spawnMobile("dantooine", "janta_warrior",300, -53.3051, -69.7948, -85.7045, 149, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -36.8454, -71.0519, -85.6321, 5, 529331)
	spawnMobile("dantooine", "janta_shaman",300, -31.7564, -70.6991, -82.6761, 30, 529331)
	spawnMobile("dantooine", "janta_primalist",300, -30.9299, -70.5722, -83.8688, 54, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -27.6045, -70.1332, -85.734, 83, 529331)
	spawnMobile("dantooine", "janta_warrior",300, -27.2679, -70.1229, -87.2973, 86, 529331)
	spawnMobile("dantooine", "janta_shaman",300, -12.3809, -69.298, -91.1233, 50, 529331)
	spawnMobile("dantooine", "janta_loreweaver",300, -10.184, -69.0675, -92.6238, 3, 529331)
	spawnMobile("dantooine", "janta_scout",300, -9.42971, -68.7554, -98.0334, 198, 529331)
	spawnMobile("dantooine", "janta_tribesman",300, -12.1795, -68.9124, -98.4735, 150, 529331)
	spawnMobile("dantooine", "janta_tribesman",300, -21.7282, -70.7367, -115.744, 326, 529331)
	spawnMobile("dantooine", "janta_shaman",300, -25.3269, -71.4564, -116.718, 328, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -30.5841, -71.4247, -118.784, 304, 529331)
	spawnMobile("dantooine", "janta_rockshaper",300, -50.995, -68.8204, -111.286, 252, 529331)
	spawnMobile("dantooine", "janta_clan_leader",300, -51.9703, -68.7111, -114.095, 321, 529331)
	spawnMobile("dantooine", "janta_warrior",300, -54.497, -68.5546, -114.042, 10, 529331)
	spawnMobile("dantooine", "janta_primalist",300, -55.4368, -68.4704, -110.159, 117, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -53.3779, -68.6238, -109.408, 185, 529331)
	spawnMobile("dantooine", "janta_warrior",300, -58.4739, -68.3888, -109.298, 253, 529331)
	spawnMobile("dantooine", "janta_harvester",300, -58.1893, -68.5242, -110.877, 171, 529331)
	spawnMobile("dantooine", "janta_shaman",300, -56.6145, -68.4391, -112.509, 214, 529331)
	spawnMobile("dantooine", "janta_rockshaper",300, -22.1831, -79.3454, -141.378, 158, 529332)
	spawnMobile("dantooine", "janta_warrior",300, -28.716, -80.0079, -146.719, 150, 529332)
	spawnMobile("dantooine", "janta_loreweaver",300, -23.6842, -79.4916, -142.943, 68, 529332)
	spawnMobile("dantooine", "janta_harvester",300, -69.1247, -96.9111, -144.208, 219, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -68.629, -96.5875, -146.917, 283, 529330)
	spawnMobile("dantooine", "janta_harvester",300, -73.3013, -98.1206, -147.959, 50, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -72.9801, -98.2003, -144.415, 127, 529330)
	spawnMobile("dantooine", "janta_tribesman",300, -86.7818, -101.414, -140.624, 291, 529330)
	spawnMobile("dantooine", "janta_shaman",300, -91.7896, -101.942, -143.309, 346, 529330)
	spawnMobile("dantooine", "janta_primalist",300, -89.6346, -102.657, -131.315, 271, 529330)
	spawnMobile("dantooine", "janta_rockshaper",300, -87.2418, -101.079, -106.861, 185, 529333)
	spawnMobile("dantooine", "janta_warrior",300, -89.3921, -101.065, -106.967, 196, 529333)
	spawnMobile("dantooine", "janta_harvester",300, -91.444, -101.056, -106.904, 177, 529333)
	spawnMobile("dantooine", "janta_tribesman",300, -93.4958, -100.998, -107.075, 171, 529333)
	spawnMobile("dantooine", "janta_clan_leader",300, -93.1301, -100.795, -95.102, 54, 529333)
	spawnMobile("dantooine", "janta_loreweaver",300, -90.4232, -100.461, -94.8326, 318, 529333)
	spawnMobile("dantooine", "janta_warrior",300, -97.6618, -101.053, -95.5366, 333, 529333)
	spawnMobile("dantooine", "janta_rockshaper",300, -99.634, -100.88, -95.4544, 27, 529333)
	spawnMobile("dantooine", "janta_tribesman",300, -91.1364, -99.5059, -88.7558, 65, 529333)
	spawnMobile("dantooine", "janta_harvester",300, -84.4594, -99.751, -91.2783, 153, 529333)
	spawnMobile("dantooine", "janta_shaman",300, -81.4228, -99.7307, -91.7225, 190, 529333)
	spawnMobile("dantooine", "janta_shaman",300, 23.4091, -49.011, -136.762, 182, 529327)
	spawnMobile("dantooine", "janta_tribesman",300, 29.8752, -46.4348, -120.908, 162, 529327)
	spawnMobile("dantooine", "janta_tribesman",300, 25.0706, -46.0443, -124.698, 207, 529327)
	spawnMobile("dantooine", "janta_primalist",300, 23.3429, -45.9298, -125.969, 59, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 6.05961, -44.4172, -118.752, 141, 529327)
	spawnMobile("dantooine", "janta_shaman",300, 13.8941, -44.4335, -115.056, 125, 529327)
	spawnMobile("dantooine", "janta_loreweaver",300, 18.7871, -45.569, -100.893, 316, 529326)
	spawnMobile("dantooine", "janta_warrior",300, 19.4025, -45.3525, -99.4609, 265, 529326)
	-- Carbonite Minor-Refactor
end
