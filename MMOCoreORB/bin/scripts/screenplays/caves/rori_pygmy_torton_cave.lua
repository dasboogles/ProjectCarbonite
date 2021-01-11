TortonCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TortonCaveScreenPlay",

	lootContainers = {
		5365467,
		5365470,
		5365474,
		5365477,
		5365482,
		5365486,
		5555807
        },
        
        lootLevel = 17, 
 
        lootGroups = {
                {
                        groups = {
                                {group = "color_crystals", chance = 100000},
                                {group = "junk", chance = 6900000},
                                {group = "melee_weapons", chance = 900000},
				{group = "pistols", chance = 300000},
				{group = "carbines", chance = 300000},
				{group = "rifles", chance = 300000},
                                {group = "clothing_attachments", chance = 600000},
                                {group = "armor_attachments", chance = 600000}
                        },
                        lootChance = 8000000
                }                                       
        },
        
        lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("TortonCaveScreenPlay", true)

function TortonCaveScreenPlay:start()
	if (isZoneEnabled("rori")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function TortonCaveScreenPlay:spawnMobiles()
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -1805.5, 92.9, -4543.3, 72, 0)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -1810.3, 91.9, -4529.2, 51, 0)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -1.6, -5.3, -7.5, 1, 5095969)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -9.5, -22.7, -26.3, 87, 5095970)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -9.8, -32.5, -73.0, 1, 5095971)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  9.9, -32.6, -74.5, -33, 5095971)
	spawnMobile("rori", "adolescent_pygmy_torton", 240,  44.4, -38.8, -52.7, -112, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -3.6, -37.1, -139.3, 33, 5095973)
	spawnMobile("rori", "adolescent_pygmy_torton", 240,  18.1, -39.2, -131.9, 25, 5095973)
	spawnMobile("rori", "adolescent_pygmy_torton", 240,  62.8, -38.5, -123.9, -94, 5095973)
	spawnMobile("rori", "adult_pygmy_torton", 240,  42.8, -48.7, -180.7, -10, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -11.8, -57.8, -216.3, -2, 5095975)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -5.2, -56.9, -240.9, -1, 5095975)
	spawnMobile("rori", "adult_pygmy_torton", 240,  -58.0, -63.0, -181.8, 83, 5095976)
	spawnMobile("rori", "adolescent_pygmy_torton", 240,  -93.5, -65.6, -170.7, 90, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -105.8, -62.2, -123.6, 166, 5095976)
	spawnMobile("rori", "adult_pygmy_torton", 240,  -97.3, -61.5, -94.2, -177, 5095976)
	spawnMobile("rori", "adult_pygmy_torton", 240,  -61.3, -60.7, -112.0, -46, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -25.2, -61.4, -95.4, -96, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -21.3, -71.2, -140.4, -30, 5095978)
	spawnMobile("rori", "pygmy_torton_protector", 240,  -82.2, -92.4, -142.6, 91, 5095976)
	spawnMobile("rori", "torton_pygmy_matriarch", 240,  -90.7, -93.1, -106.5, 166, 5095979)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -84.9, -92.8, -106.2, 173, 5095979)
	spawnMobile("rori", "juvenile_pygmy_torton", 240,  -98.9, -91.7, -108.5, 151, 5095979)

	-- Carbonite Enhancement
	spawnMobile("rori", "pygmy_torton_protector", 240, -2.34171, -32.3113, -67.4738, 233, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, -9.85371, -32.9665, -63.3424, 162, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, 1.60706, -33.1386, -75.4918, 76, 5095971)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 8.18584, -32.7866, -63.196, 216, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, 21.1584, -35.3853, -63.7896, 58, 5095971)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 22.5889, -36.455, -52.6443, 84, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, 35.7906, -37.4372, -55.3037, 72, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 42.2401, -38.1461, -60.6633, 340, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 36.579, -37.2251, -46.8698, 157, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 21.0676, -32.5038, -73.5363, 326, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, -7.96588, -31.0531, -53.3075, 352, 5095971)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -12.3641, -30.7942, -53.1154, 4, 5095971)
	spawnMobile("rori", "pygmy_torton_protector", 240, -9.97523, -27.0121, -38.8261, 5, 5095970)
	spawnMobile("rori", "pygmy_torton_protector", 240, 8.04327, -15.8612, -25.635, 259, 5095970)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 8.28734, -7.5382, -8.80208, 320, 5095969)
	spawnMobile("rori", "pygmy_torton_protector", 240, 2.21301, -0.57755, 2.21174, 357, 5095969)
	spawnMobile("rori", "pygmy_torton_protector", 240, -1.17361, 2.53116, 8.1738, 12, 5095969)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -1824.85, 100.037, -4542.22, 96, 0)
	spawnMobile("rori", "pygmy_torton_protector", 240, -1826.9, 99.7666, -4538.06, 70, 0)
	spawnMobile("rori", "pygmy_torton_protector", 240, 52.3209, -37.8294, -93.0861, 285, 5095972)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 44.7873, -38.4297, -101.269, 326, 5095972)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 22.7577, -37.5278, -100.767, 73, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 30.1207, -37.4611, -101.533, 46, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 41.0975, -38.5559, -86.5893, 1, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, 38.8715, -38.0582, -76.6016, 6, 5095972)
	spawnMobile("rori", "pygmy_torton_protector", 240, -9.45918, -36.8719, -133.925, 206, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 7.39397, -37.3179, -129.694, 228, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 3.12924, -36.4919, -124.714, 216, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 18.5763, -37.578, -121.798, 27, 5095973)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 26.615, -38.1579, -122.327, 19, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 40.6704, -39.1489, -122.327, 135, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 51.459, -39.933, -122.967, 155, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 70.4166, -41.7209, -135.53, 251, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 70.4389, -46.3243, -147.651, 271, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 71.6747, -50.5113, -164.501, 272, 5095973)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 65.8399, -49.1017, -176.477, 312, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 56.9821, -48.7431, -161.997, 317, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 37.3061, -49.1594, -163.384, 18, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 35.9182, -45.496, -145.069, 31, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 52.4644, -45.7452, -145.086, 319, 5095973)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 54.6387, -42.4179, -136.008, 284, 5095973)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 52.7888, -48.3133, -174.455, 356, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 20.1152, -54.7, -175.742, 80, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 22.2999, -53.199, -182.193, 80, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 5.07889, -55.9802, -182.206, 105, 5095974)
	spawnMobile("rori", "pygmy_torton_protector", 240, -29.0392, -57.3227, -180.54, 270, 5095974)
	spawnMobile("rori", "pygmy_torton_protector", 240, -11.5058, -56.2306, -196.827, 178, 5095974)
	spawnMobile("rori", "pygmy_torton_protector", 240, -20.9921, -56.8488, -217.062, 29, 5095975)
	spawnMobile("rori", "pygmy_torton_protector", 240, -2.22852, -57.2817, -209.658, 273, 5095975)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -0.155905, -55.7077, -230.214, 283, 5095975)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -1.95619, -55.953, -235.778, 328, 5095975)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -19.3012, -57.6966, -241.051, 86, 5095975)
	spawnMobile("rori", "pygmy_torton_protector", 240, -22.2613, -55.4806, -257.538, 5, 5095975)
	spawnMobile("rori", "pygmy_torton_protector", 240, -10.6499, -55.8183, -260.694, 280, 5095975)
	spawnMobile("rori", "pygmy_torton_protector", 240, -56.002, -63.0388, -188.91, 62, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -62.0608, -61.7023, -169.797, 120, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -74.0468, -61.7703, -201.203, 60, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -112.023, -60.9776, -204.4, 81, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -119.473, -61.0045, -167.41, 82, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -117.185, -61.1395, -171.804, 83, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -98.8507, -63.9535, -180.368, 22, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -93.2184, -64.0855, -182.075, 3, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -95.1856, -65.9018, -165.352, 106, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -100.237, -61.527, -141.684, 180, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -95.9763, -62.509, -120.443, 176, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -86.8008, -62.1491, -121.542, 156, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -90.2028, -61.8182, -93.1608, 182, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -46.8687, -61.2446, -111.49, 309, 5095977)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -40.3929, -62.1916, -103.932, 289, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -39.405, -62.171, -91.105, 279, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -41.8785, -62.519, -80.9351, 244, 5095977)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -60.1274, -62.2586, -81.9003, 199, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -72.8884, -62.265, -88.928, 158, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -56.254, -60.6474, -97.4963, 259, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -22.1541, -60.8549, -105.07, 261, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -29.2588, -62.3661, -82.8964, 240, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -30.0268, -62.8364, -116.647, 165, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -23.0306, -63.7686, -118.085, 172, 5095977)
	spawnMobile("rori", "pygmy_torton_protector", 240, -19.115, -69.1199, -131.097, 327, 5095978)
	spawnMobile("rori", "pygmy_torton_protector", 240, -28.7179, -72.1435, -148.756, 348, 5095978)
	spawnMobile("rori", "pygmy_torton_protector", 240, -47.5565, -78.9503, -150.357, 271, 5095978)
	spawnMobile("rori", "pygmy_torton_protector", 240, -49.8459, -79.6458, -141.538, 271, 5095978)
	spawnMobile("rori", "pygmy_torton_protector", 240, -84.5383, -92.2165, -149.363, 83, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -80.027, -91.2517, -154.746, 59, 5095976)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -93.7379, -94.1923, -119.503, 2, 5095979)
	spawnMobile("rori", "pygmy_torton_protector", 240, -87.9394, -94.9992, -118.522, 347, 5095979)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -82.4745, -93.884, -117.299, 332, 5095979)
	spawnMobile("rori", "pygmy_torton_protector", 240, -124.428, -61.3117, -131.18, 172, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -123.64, -61.9829, -148.89, 157, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -80.4272, -62.3902, -170.943, 92, 5095976)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -65.1412, -61.3474, -189.644, 67, 5095976)
	spawnMobile("rori", "pygmy_torton_protector", 240, -8.44852, -55.9734, -181.189, 89, 5095974)
	spawnMobile("rori", "pygmy_torton_protector", 240, 34.9194, -50.6166, -174.375, 44, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, 36.1351, -40.1297, -130.556, 333, 5095973)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, 23.9693, -37.8406, -111.203, 20, 5095973)
	spawnMobile("rori", "pygmy_torton_protector", 240, -1834.68, 99.2617, -4542.91, 73, 0)
	spawnMobile("rori", "pygmy_torton_protector", 240, -1807.96, 92.8648, -4536.12, 77, 0)
	spawnMobile("rori", "juvenile_pygmy_torton", 240, -1806.85, 93.7716, -4551.66, 88, 0)
	spawnMobile("rori", "pygmy_torton_protector", 240, -1816.92, 90.301, -4516.74, 28, 0)
	-- Carbonite Enhancement
end
