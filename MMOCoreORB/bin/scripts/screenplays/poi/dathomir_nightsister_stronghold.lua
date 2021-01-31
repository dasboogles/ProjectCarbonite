NightSisterStrongholdScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NightSisterStrongholdScreenPlay",

	lootContainers = {
		5035775
	},

	lootLevel = 200,
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "junk", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "containers", chance = 10000000}
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
				{group = "pistols", chance = 10000000}
			},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 1500000
		},
	},

	lootContainerRespawn = 300, -- 30 -> 5 minutes

	axkvaGuards = {
		{ -88.44, -102.87, -118.02, 0, 4115629 },
		{ -95.26, -102.39, -121.17, 0, 4115629 },
		{ -93.95, -103.28, -127.98, 0, 4115629 },
		{ -80.15, -101.58, -119.85, 0, 4115629 },
		{ -82.63, -102.43, -124.82, 0, 4115629 },
		{ -95.73, -102.72, -122.55, 0, 4115629 }, -- New additions after this
		{ -67.2872, -96.4111, -137.733, 207, 4115626 },
		{ -66.5778, -96.9253, -162.697, 314, 4115626 },
		{ -83.5309, -98.1695, -162.477, 37, 4115626 },
		{ -77.6706, -100.01, -138.027, 138, 4115626 },
		{ -85.2453, -98.4536, -155.769, 86, 4115626 },
		{ -62.8895, -93.3427, -154.344, 262, 4115626 },
		{ -62.4104, -94.0954, -149.279, 303, 4115626 },
		{ -61.9146, -94.075, -144.959, 264, 4115626 },
		{ -61.7859, -93.5209, -139.222, 241, 4115626 },
		{ -73.1279, -70.755, -150.924, 271, 4115626 },
		{ -73.1425, -70.884, -156.008, 279, 4115626 },
		{ -73.5711, -70.7785, -162.436, 255, 4115626 },
		{ -76.9263, -70.851, -166.403, 330, 4115626 },
		{ -83.023, -71.7308, -167.566, 359, 4115626 },
		{ -88.9627, -73.0913, -163.523, 25, 4115626 },
		{ -96.258, -73.368, -158.69, 20, 4115626 },
		{ -98.3489, -71.969, -150.473, 87, 4115626 },
		{ -97.622, -69.9917, -140.421, 96, 4115626 },
		{ -92.9762, -69.6137, -130.559, 140, 4115626 },
		{ -84.0914, -70.3361, -129.185, 171, 4115626 },
		{ -78.1392, -70.303, -131.407, 193, 4115626 },
		{ -48.0656, -68.5193, -176.589, 260, 4115626 },
		{ -46.3062, -70.2094, -187.251, 286, 4115626 },
		{ -87.8068, -69.3451, -107.567, 243, 4115626 },
		{ -82.8019, -69.9922, -87.3316, 247, 4115626 },
		{ -82.718, -68.5328, -104.201, 316, 4115626 },
		{ -101.709, -69.0349, -90.3932, 132, 4115626 },
		{ -100.86, -100.264, -92.9273, 142, 4115629 },
		{ -96.1034, -100.34, -90.9325, 144, 4115629 },
		{ -103.308, -100.024, -97.0358, 136, 4115629 },
		{ -33.8697, -77.2999, -131.361, 86, 4115628 },
		{ -14.728, -76.2663, -129.779, 250, 4115628 },
		{ -16.972, -79.1493, -146.67, 258, 4115628 },
		{ -36.1471, -79.8945, -135.738, 125, 4115628 },
		{ -18.0662, -69.8732, -117.759, 350, 4115627 },
		{ -32.745, -70.7994, -118.273, 324, 4115627 },
		{ -29.5118, -70.1938, -79.8887, 205, 4115627 },
		{ -68.5782, -68.4886, -112.002, 63, 4115627 }
	}
	
}

registerScreenPlay("NightSisterStrongholdScreenPlay", true)

function NightSisterStrongholdScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function NightSisterStrongholdScreenPlay:spawnMobiles()

	--outside the walls
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4059.4,123.3,-285.0,-114,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4068.8,124.4,-270.5,-140,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4074.6,125.2,-287.0,-136,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4159.6,135.4,-191.9,-173,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4167.0,134.6,-190.7,-91,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4175.3,132.6,-178.0,-89,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-4243.1,135.7,-83.4,-74,0)
	spawnMobile("dathomir", "nightsister_bull_rancor", 600,-4247.2,135.4,-89.5,-74,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4121.4,121.6,-43.7,-70,0)
	spawnMobile("dathomir", "nightsister_ranger", 600,-4128.9,120.7,-41.5,0,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4005.1,119.0,-60.0,-164,0)
	spawnMobile("dathomir", "nightsister_initiate", 600,-4001.0,119.0,-62.4,-165,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-3994.1,124.7,-76.1,102,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4032.2,123.5,-65.6,14,0)
	spawnMobile("dathomir", "nightsister_slave", 600,-4013.9,106.0,-42.5,140,0)
	spawnMobile("dathomir", "nightsister_slave", 600,-4010.3,106.0,-46.9,40,0)
	spawnMobile("dathomir", "nightsister_slave", 600,-4006.7,106.0,-42.2,90,0)

	--inside the walls (not in the building)
	spawnMobile("dathomir", "nightsister_elder",1800,-3976.1,131.5,-171.3,-169,0)
	spawnMobile("dathomir", "nightsister_elder",1800,-4003.5,121,-270.1,-54,0)
	spawnMobile("dathomir", "nightsister_elder",1800,-4155.3,121.0,-99.8,51,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-4107.2,126.3,-100,-24,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4105.6,126.8,-94.5,178,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4100.6,126.7,-95.5,-110,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-4016.0,130.3,-139.0,6,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4014.0,130.4,-136.8,-100,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4019.4,129.8,-137.7,80,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-3984.0,123.4,-231.0,0,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-3983.0,124.4,-226.9,-166,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4017.5,121.0,-249.5,-64,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-3986.7,124.2,-225.4,178,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4059.9,128.0,-157.0,0,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4058.3,127.8,-150.9,-175,0)
	spawnMobile("dathomir", "nightsister_stalker", 600,-4062.8,128.3,-152.9,116,0)
	spawnMobile("dathomir", "nightsister_initiate", 600,-4046.1,120.8,-188.7,37,0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-4039.4,120.7,-194.8,19,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4035.4,121.2,-194.1,-4,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4042.3,118.8,-230.7,-134,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4047.7,119.1,-232.2,101,0)
	spawnMobile("dathomir", "nightsister_ranger", 600,-4045.0,120.2,-261.8,-54,0)
	spawnMobile("dathomir", "nightsister_initiate", 600,-3965.2,125.1,-237.1,-65,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4150.9,134.6,-176.0,-62,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4157.6,134.0,-173.4,111,0)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-4152.9,133.5,-168.5,178,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4142.0,126.9,-136.8,-52,0)
	spawnMobile("dathomir", "nightsister_ranger", 600,-4192.0,125.2,-132.9,110,0)
	spawnMobile("dathomir", "nightsister_ranger", 600,-4190.3,124.7,-124.8,98,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4139.9,121.0,-82.8,84,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4117.0,126.7,-116.6,-125,0)
	spawnMobile("dathomir", "nightsister_stalker", 600,-4122.8,126.2,-120.6,54,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4066.6,130.5,-105.8,38,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4060.1,130.5,-111.9,46,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-3993.8,131.2,-194.4,-138,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4028.1,126.3,-109.2,52,0)
	spawnMobile("dathomir", "nightsister_ranger", 600,-3992.4,129.6,-108.1,-64,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-3955.8,131.9,-204.4,-158,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4084.6,133.6,-210.4,26,0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-4080.4,132.9,-207.0,-105,0)
	spawnMobile("dathomir", "nightsister_sentry", 600,-4113.8,122.5,-57.2,-156,0)
	spawnMobile("dathomir", "nightsister_protector", 600,-4024.4,126.7,-111.9,2,0)

	--//////////////////////////////////////////////////////////////////////////////
	--/// New Elders
	spawnMobile("dathomir", "nightsister_elder", 1800, -4157.57, 121, -82.5791, 157, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4154.85, 121, -113.028, 350, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4168.94, 121, -99.1771, 101, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4138.74, 121, -100.886, 284, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3967.3, 132.366, -143.656, 250, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800,-4067.4,126.3,-83.5,167,0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4018.95, 123.973, -86.5527, 195, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4146.71, 120.286, -58.9106, 179, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4191.58, 124.974, -128.616, 100, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4138.45, 135.123, -188.374, 44, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4061.66, 122.126, -254.363, 55, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3934.75, 130.318, -224.866, 261, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3990.39, 131.5, -171.467, 102, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3962.76, 131.5, -174.763, 272, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -4024.68, 121, -267.875, 81, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3998.63, 121, -256.574, 207, 0)
	spawnMobile("dathomir", "nightsister_elder", 1800, -3998.59, 121, -283.2, 353, 0)
	--/// New Elders
	--/// New Additions
	spawnMobile("dathomir", "nightsister_protector", 600, -4143.02, 135.466, -188.932, 340, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4138.26, 135.256, -193.385, 114, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -4015.57, 121.915, -70.1628, 22, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4018.18, 120.094, -65.4984, 180, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4065.17, 126.004, -60.4171, 308, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4066.19, 125.872, -57.7028, 190, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4067.5, 126.161, -59.7188, 73, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4134.05, 120.199, -42.0075, 326, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4133.25, 120.258, -38.7551, 269, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4137.84, 119.97, -39.1895, 107, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4209.1, 127.505, -117.736, 175, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4209.81, 127.373, -122.435, 16, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4206.5, 126.484, -142.122, 132, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4206.57, 126.581, -147.355, 47, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4200.74, 126.331, -147.163, 287, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4167.96, 133.676, -178.179, 197, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -4164.86, 134.409, -181.911, 233, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4052.69, 123.085, -289.876, 105, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4055.92, 123.358, -294.398, 105, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4050.22, 123.444, -298.207, 331, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4002.27, 128.273, -304.47, 89, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -3998.96, 128.359, -304.483, 278, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3943.89, 123.523, -276.781, 174, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3919.54, 129.949, -228.068, 321, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3919.68, 130.271, -223.723, 226, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3958.4, 129.572, -120.965, 302, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3960.71, 129.673, -116.061, 180, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3957.87, 129.353, -118.06, 245, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -3978.79, 128.79, -92.3808, 279, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4024.52, 126.252, -108.557, 226, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3995.66, 129.009, -106.596, 57, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -3965.99, 131.829, -137.897, 287, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3961.75, 131.502, -145.732, 193, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3947.15, 131.433, -190.67, 126, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3944.76, 131.232, -190.767, 200, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3939.94, 131.607, -210.985, 198, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -3940.31, 131.321, -215.156, 305, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3945.36, 131.322, -214.631, 57, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3945.34, 131.322, -214.623, 57, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3930.97, 129.973, -228.076, 208, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3932.45, 130.797, -220.565, 307, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -3952.56, 123.702, -266.081, 322, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -3956, 122.983, -267.284, 325, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3960.35, 122.833, -261.516, 89, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3956.91, 123.294, -258.378, 132, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3952.53, 123.5, -260.697, 228, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -3986.9, 121, -269.465, 87, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -3992.42, 121, -282.277, 137, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4005.23, 121, -287.413, 181, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4016.94, 121, -283.557, 209, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3991.83, 121, -257.683, 46, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4024.04, 121, -259.131, 310, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4018.56, 121, -252.503, 313, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4021.79, 121, -255.69, 313, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4066.41, 123.151, -253.476, 2, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4062.96, 122.734, -259.904, 128, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3981.99, 131.5, -197.431, 199, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3984.41, 131.5, -196.332, 199, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -3988.58, 131.5, -195.31, 206, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3994.67, 131.5, -176.209, 265, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3991.5, 131.5, -164.573, 307, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3981.37, 131.504, -157.185, 342, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -3968.38, 131.5, -159.028, 38, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -3960.18, 131.5, -169.269, 78, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -3960.63, 131.5, -181.022, 107, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -3966.93, 131.5, -191.567, 132, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4059.88, 130.487, -114.485, 20, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4069.92, 130.473, -105.833, 18, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4070.56, 126.284, -79.2743, 225, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4064.48, 125.945, -79.3031, 123, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4143.46, 120.104, -54.6463, 98, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4149.76, 120.372, -54.9731, 205, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4152.61, 121, -77.8324, 349, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4164.24, 121, -83.0553, 316, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4170.81, 121, -93.1453, 293, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4170.32, 121.017, -105.963, 248, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4160.64, 121.001, -114.88, 198, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4148.2, 121, -114.336, 158, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4139.51, 121, -106.279, 126, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4136.2, 121, -94.5417, 105, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4138.6, 121, -91.1962, 67, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4140.27, 121, -86.4727, 78, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4122.41, 121.289, -53.7283, 328, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -4132.33, 120.34, -52.4847, 21, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4161.74, 129.538, -152.645, 268, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4163.75, 130.221, -156.113, 311, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4169.54, 129.822, -156.726, 226, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4171.56, 129.982, -158.446, 55, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4176.06, 129.129, -156.61, 49, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4182.41, 126.617, -146.04, 73, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4180.4, 126.549, -145.124, 238, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4187.88, 126.659, -147.82, 103, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4175.2, 125.918, -140.807, 166, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4177.29, 126.036, -141.701, 162, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4161.34, 126.099, -139.396, 112, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4155.97, 128.396, -146.698, 10, 0)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4142.84, 126.361, -135.175, 140, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4022.34, 123.561, -82.5517, 240, 0)
	spawnMobile("dathomir", "nightsister_ranger", 600, -4015.67, 123.699, -82.9937, 120, 0)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4057, 126.427, -94.7896, 178, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4048.81, 126.588, -102.211, 254, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4057.36, 130.176, -106.239, 137, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4061.65, 130.007, -101.691, 242, 0)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4051.25, 121.928, -182.782, 214, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -4063.01, 122.442, -204.143, 302, 0)
	spawnMobile("dathomir", "nightsister_protector", 600, -4026.57, 128.725, -152.256, 67, 0)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4022.12, 129.498, -150.581, 253, 0)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -4022.19, 129.359, -153.462, 289, 0)
	--//////////////////////////////////////////////////////////////////////////////

	--//////////////////////////////////////////////////////////////////////////////
	--main building
	spawnMobile("dathomir", "nightsister_initiate", 600,-5.9,0.8,3.3,82,189375)
	spawnMobile("dathomir", "nightsister_initiate", 600,5.5,0.8,2.6,-92,189375)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,5.8,0.8,-13.2,-90,189376)
	spawnMobile("dathomir", "nightsister_slave", 600,14.3,0.8,-22.6,152,189377)
	spawnMobile("dathomir", "nightsister_slave", 600,18.1,0.8,-28.0,-100,189377)
	spawnMobile("dathomir", "nightsister_slave", 600,10.6,0.8,-30.1,32,189377)
	spawnMobile("dathomir", "nightsister_ranger", 600,-13.4,0.8,-13.4,14,189378)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-1.2,0.8,-44.4,-85,189379)
	spawnMobile("dathomir", "nightsister_initiate", 600,0.2,0.8,-54.7,-5,189379)
	spawnMobile("dathomir", "nightsister_elder", 1800,-5.8,7.2,-3.0,135,189383)
	spawnMobile("dathomir", "nightsister_slave", 600,-15.0,7.2,-14.3,3,189384)
	--//////////////////////////////////////////////////////////////////////////////
	--// New Additions
	spawnMobile("dathomir", "nightsister_sentinel", 600, -5.1194, 0.759882, 13.9133, 55, 189374)
	spawnMobile("dathomir", "nightsister_protector", 600, 5.00651, 0.759882, 13.7308, 325, 189374)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 6.10899, 0.759886, 6.22765, 270, 189375)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 7.70801, 0.759886, -1.67017, 186, 189375)
	spawnMobile("dathomir", "nightsister_protector", 600, 4.4941, 0.759886, -4.09247, 111, 189375)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -4.97135, 0.759886, -4.05443, 260, 189375)
	spawnMobile("dathomir", "nightsister_protector", 600, -2.00147, 0.759886, -1.11503, 29, 189375)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3.04548, 0.759886, 3.9614, 317, 189375)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -7.1412, 0.759886, 5.54837, 76, 189375)
	spawnMobile("dathomir", "nightsister_slave", 600, -1.63666, 0.759887, -15.4149, 195, 189376)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -3.20719, 0.759886, -14.2179, 282, 189376)
	spawnMobile("dathomir", "nightsister_protector", 600, 5.74246, 0.759885, -11.477, 262, 189376)
	spawnMobile("dathomir", "nightsister_protector", 600, 10.7771, 0.759882, -10.9428, 82, 189376)
	spawnMobile("dathomir", "nightsister_slave", 600, 15.1161, 0.759883, -16.9332, 144, 189377)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 19.0256, 0.759882, -19.4593, 263, 189377)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 16.0477, 0.759883, -21.4345, 23, 189377)
	spawnMobile("dathomir", "nightsister_protector", 600, 14.1608, 0.759884, -19.8685, 285, 189377)
	spawnMobile("dathomir", "nightsister_protector", 600, 11.273, 0.759883, -24.095, 172, 189377)
	spawnMobile("dathomir", "nightsister_slave", 600, 12.2273, 0.759883, -27.756, 163, 189377)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 14.8431, 0.759882, -29.2503, 129, 189377)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 13.4276, 0.759882, -32.0419, 193, 189377)
	spawnMobile("dathomir", "nightsister_slave", 600, 10.1905, 0.759883, -35.5438, 214, 189377)
	spawnMobile("dathomir", "nightsister_protector", 600, 2.42425, 0.759886, -23.9543, 270, 189377)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -4.13907, 0.759885, -23.6363, 272, 189377)
	spawnMobile("dathomir", "nightsister_protector", 600, -7.2113, 0.759885, -23.6106, 93, 189377)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -15.2689, 0.759882, -13.8084, 9, 189378)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -11.2321, 0.759882, -13.5823, 23, 189378)
	spawnMobile("dathomir", "nightsister_slave", 600, -19.2395, 0.759882, -24.1383, 197, 189378)
	spawnMobile("dathomir", "nightsister_protector", 600, -16.7147, 0.759882, -26.8351, 160, 189378)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -14.9744, 0.759882, -31.9584, 227, 189378)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -14.2628, 0.759882, -34.234, 249, 189378)
	spawnMobile("dathomir", "nightsister_protector", 600, -11.0533, 0.759883, -38.4141, 155, 189378)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -7.99572, 0.759882, -37.3772, 318, 189378)
	--// Bottomg of Steps and Second Floor of Building
	-- Students
	spawnMobile("dathomir", "nightsister_initiate", 600, 2.5899, 0.759882, -53.6759, 334, 189379)
	spawnMobile("dathomir", "nightsister_initiate", 600, -1.90737, 0.759882, -54.9529, 4, 189379)
	spawnMobile("dathomir", "nightsister_initiate", 600, -4.92409, 0.759882, -53.933, 21, 189379)
	-- Elder
	spawnMobile("dathomir", "nightsister_elder", 600, -0.979641, 0.759882, -51.3326, 175, 189379)
	spawnMobile("dathomir", "nightsister_elder", 600, -6.21823, 7.21903, -16.412, 102, 189381)
	spawnMobile("dathomir", "nightsister_elder", 600, 3.97876, 7.219, -4.7435, 80, 189383)
	spawnMobile("dathomir", "nightsister_elder", 600, -3.20211, 7.219, 0.302938, 25, 189383)
	-- Slaves
	spawnMobile("dathomir", "nightsister_slave", 600, 3.15838, 0.759882, -42.0046, 28, 189379)
	spawnMobile("dathomir", "nightsister_slave", 600, 5.01951, 0.759882, -41.9, 325, 189379)
	-- Sentries
	spawnMobile("dathomir", "nightsister_sentry", 600, -7.80231, 0.759882, -44.5906, 118, 189379)
	spawnMobile("dathomir", "nightsister_sentry", 600, -4.70806, 0.759884, -42.6033, 102, 189379)
	-- 2nd Floor
	-- // Slaves
	spawnMobile("dathomir", "nightsister_slave", 600, -13.3436, 7.219, -31.8403, 155, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -11.2687, 7.219, -31.9596, 183, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -16.891, 7.219, -30.1761, 258, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -21.0977, 7.219, -22.347, 271, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -19.9062, 7.219, -17.8073, 300, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -19.0934, 7.219, -15.8147, 286, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, -12.0694, 7.219, -20.0271, 96, 189384)
	spawnMobile("dathomir", "nightsister_slave", 600, 15.6919, 7.21881, -25.1153, 96, 189382)
	spawnMobile("dathomir", "nightsister_slave", 600, 14.5994, 7.21881, -20.1017, 324, 189382)
	spawnMobile("dathomir", "nightsister_slave", 600, 11.3997, 7.21881, -19.0614, 66, 189382)
	spawnMobile("dathomir", "nightsister_slave", 600, 11.1721, 7.21881, -8.78714, 352, 189382)
	spawnMobile("dathomir", "nightsister_slave", 600, 9.7004, 7.21881, -33.8358, 144, 189382)
	spawnMobile("dathomir", "nightsister_slave", 600, 6.83734, 7.21881, -30.1668, 287, 189382)
	-- // Protectors
	spawnMobile("dathomir", "nightsister_protector", 600, -4.08307, 7.21901, -13.7243, 166, 189381)
	spawnMobile("dathomir", "nightsister_protector", 600, 1.6475, 7.219, -13.5249, 187, 189381)
	spawnMobile("dathomir", "nightsister_protector", 600, 4.10046, 7.219, -17.6156, 208, 189381)
	spawnMobile("dathomir", "nightsister_protector", 600, -4.83569, 7.21902, -19.5505, 156, 189381)
	--// New Additions
	--//////////////////////////////////////////////////////////////////////////////
	--main building

	--in the cave, make difficulty 'scale' as player progresses into the cave, listed here from bottom to top:
	spawnMobile("dathomir", "nightsister_sentinel", 600,-89.6414,-100.547,-149.769,54,4115626)
	spawnMobile("dathomir", "grovo", 600,-82.0,-99.7,-93.1,-174,4115629)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-82.2,-100.0,-103.6,-161,4115629)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-28.3439,-80.1922,-151.496,7,4115628)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-22.2057,-80.5683,-151.813,2,4115628)
	spawnMobile("dathomir", "nightsister_enraged_bull_rancor", 600,-58.3,-92.2,-146.4,77,4115628)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-12.9025,-68.921,-96.3403,7,4115627)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-19.9525,-69.7168,-92.0932,2,4115627)
	spawnMobile("dathomir", "nightsister_ranger", 600,-52.8,-68.7,-103.5,20,4115627)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-66.3095,-70.9,-84.3193,2,4115627)
	spawnMobile("dathomir", "nightsister_bull_rancor", 600,-27.2,-70.7,-114.8,-32,4115627)
	spawnMobile("dathomir", "nightsister_rancor", 600,-47.1,-69.8,-83.0,149,4115627)
	spawnMobile("dathomir", "nightsister_ranger", 600,-107.147,-68.531,-113.11,7,4115626)
	spawnMobile("dathomir", "nightsister_stalker", 600,-118.707,-69.6862,-123.213,2,4115626)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-122.558,-69.332,-138.946,7,4115626)
	spawnMobile("dathomir", "nightsister_elder", 1800,-104.958,-71.5983,-176.399,2,4115626)
	spawnMobile("dathomir", "nightsister_stalker", 600,-115.398,-69.2239,-172.659,7,4115626)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-121.94,-69.8514,-182.011,2,4115626)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-115.618,-69.9586,-198.215,7,4115626)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-101.324,-68.9513,-203.529,2,4115626)
	spawnMobile("dathomir", "nightsister_rancor", 600,-84.3,-70.2,-122.6,-89,4115626)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,-68.4386,-69.8099,-196.707,7,4115626)
	spawnMobile("dathomir", "nightsister_bull_rancor", 600,-61.3,-69.9,-194.0,12,4115626)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600,-65.5,-69.7,-162.9,165,4115626)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-20.5611,-64.3706,-179.909,2,4115624)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600,-13.1121,-64.7617,-221.124,2,4115625)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-93.1,-73.3,-174.5,-6,4115626)
	spawnMobile("dathomir", "nightsister_sentinel", 600,-94.4,-73.2,-166.3,88,4115626)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600,-20.9,-65.1,-213.2,20,4115625)
	spawnMobile("dathomir", "ancient_bull_rancor", 600,-19.7,-63.2,-260.3,-7,4115625)
	spawnMobile("dathomir", "nightsister_enraged_bull_rancor", 600,-8.3,-64.0,-228.4,-7,4115625)
	spawnMobile("dathomir", "nightsister_stalker", 600,64.9,-48.3,-131.0,-105,4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,60.9,-52.4,-142.4,-92,4115623)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600,1.9,-63.2,-233.7,-89,4115625)
	spawnMobile("dathomir", "nightsister_rancor", 600,-5.85405,-66.7536,-214.372,2,4115625)
	spawnMobile("dathomir", "nightsister_sentinel", 600,14.0655,-63.2116,-184.377,2,4115624)
	spawnMobile("dathomir", "nightsister_protector", 600,-12.4,-64.0,-188.3,-2,4115624)
	spawnMobile("dathomir", "nightsister_sentinel", 600,57.2187,-56.7709,-178.97,2,4115623)
	spawnMobile("dathomir", "nightsister_protector", 600,61.2023,-57.0517,-174.241,-134,4115623)
	spawnMobile("dathomir", "nightsister_stalker", 600,65.0699,-55.58,-159.308,2,4115623)
	spawnMobile("dathomir", "nightsister_elder", 1800,65.4328,-55.1946,-157.441,-167,4115623)
	spawnMobile("dathomir", "nightsister_sentinel", 600,38.9,-53.2,-145.1,-38,4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,37.6899,-52.6698,-143.418,7,4115623)
	spawnMobile("dathomir", "nightsister_sentry", 600,17.99,-47.6612,-133.802,2,4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600,-7.9093,-45.001,-143.0,9,4115623)
	spawnMobile("dathomir", "nightsister_rancor", 600,20.7,-46.0,-111.6,35,4115623)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600,-3.6,-46.2,-149.1,-11,4115623)
	spawnMobile("dathomir", "nightsister_ranger", 600,0.0473984,-45.1734,-143.086,7,4115623)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600,25.9,-60.8,-176.4,64,4115623)
	spawnMobile("dathomir", "nightsister_ranger", 600,38.3645,-45.6514,-94.5238,2,4115622)
	spawnMobile("dathomir", "nightsister_sentry", 600,40.565,-46.6515,-76.2628,7,4115622)
	spawnMobile("dathomir", "nightsister_outcast", 600,48.2317,-47.0278,-54.4734,2,4115622)
	spawnMobile("dathomir", "nightsister_outcast", 600,44.0373,-46.6601,-51.444,7,4115622)
	spawnMobile("dathomir", "nightsister_sentry", 600,31.0654,-45.1049,-56.1405,-100,4115622)
	spawnMobile("dathomir", "nightsister_rancor", 600,52.1,-45.9,-95.7,-68,4115622)
	spawnMobile("dathomir", "nightsister_ranger", 600,15.027,-40.2011,-76.6327,7,4115621)
	spawnMobile("dathomir", "nightsister_rancor", 600,16.3,-42.3,-64.0,-137,4115621)
	spawnMobile("dathomir", "nightsister_sentry", 600,-5.96411,-40.5602,-65.8697,2,4115621)
	spawnMobile("dathomir", "nightsister_bull_rancor", 600,2.6,-40.3,-66.4,-60,4115621)
	spawnMobile("dathomir", "nightsister_outcast", 600,-10.1746,-39.3909,-54.6325,2,4115621)
	spawnMobile("dathomir", "nightsister_initiate", 600,-9.30522,-31.6686,-33.0453,7,4115620)
	spawnMobile("dathomir", "nightsister_initiate", 600,5.27219,-24.4314,-26.0931,2,4115620)
	spawnMobile("dathomir", "nightsister_initiate", 600,2.20982,-11.8595,-2.93477,7,4115619)
	--//////////////////////////////////////////////////////////////////////////////
	-- New Additions to Cave
	spawnMobile("dathomir", "nightsister_sentinel", 600, 52.3013, -44.7935, -48.2604, 231, 4115622)
	spawnMobile("dathomir", "nightsister_sentry", 600, 54.231, -46.1782, -61.8765, 291, 4115622)
	spawnMobile("dathomir", "nightsister_sentry", 1800, 20.5919, -43.4359, -50.2207, 133, 4115621)
	spawnMobile("dathomir", "nightsister_protector", 600, -15.0282, -39.9163, -84.4349, 175, 4115621)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -8.03935, -40.4836, -84.2857, 186, 4115621)
	spawnMobile("dathomir", "nightsister_protector", 600, 22.4547, -39.1521, -78.0834, 296, 4115621)
	spawnMobile("dathomir", "nightsister_sentry", 600, 15.7235, -38.6694, -83.8419, 333, 4115621)
	spawnMobile("dathomir", "nightsister_sentry", 600, -8.58244, -40.3559, -72.5664, 116, 4115621)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -5.14945, -40.3058, -74.1491, 250, 4115621)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 45.6009, -46.8198, -57.5113, 26, 4115622)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 49.5258, -45.1872, -103.775, 322, 4115622)
	spawnMobile("dathomir", "nightsister_sentry", 1800, 54.9189, -45.9509, -88.2599, 246, 4115622)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 16.3126, -45.6258, -101.27, 115, 4115622)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -3.34723, -45.0551, -132.018, 190, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -13.6165, -45.1857, -127.686, 126, 4115623)
	spawnMobile("dathomir", "nightsister_sentry", 600, -1.11124, -44.6425, -121.205, 140, 4115623)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 48.2934, -48.1868, -125.621, 96, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 50.8681, -48.1097, -124.608, 203, 4115623)
	spawnMobile("dathomir", "nightsister_sentry", 600, 63.4679, -50.4666, -137.404, 123, 4115623)
	spawnMobile("dathomir", "nightsister_sentry", 600, 73.2926, -56.4931, -159.48, 22, 4115623)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 40.6108, -56.6686, -162.244, 313, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 35.1922, -56.4044, -157.805, 125, 4115623)
	spawnMobile("dathomir", "nightsister_protector", 600, 39.6803, -55.8485, -157.409, 218, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 39.7809, -57.3258, -187.394, 11, 4115623)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 44.1631, -56.4716, -186.47, 300, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 41.9549, -57.0218, -184.931, 180, 4115623)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 20.3948, -47.7438, -133.398, 266, 4115623)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -12.2668, -39.2155, -54.6998, 354, 4115621)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -9.41138, -37.2396, -45.1292, 139, 4115620)
	spawnMobile("dathomir", "nightsister_protector", 600, -7.26418, -31.7065, -33.8703, 20, 4115620)
	spawnMobile("dathomir", "nightsister_sentry", 600, -3.3964, -29.0214, -24.9553, 148, 4115620)
	spawnMobile("dathomir", "nightsister_sentry", 600, -2.71586, -28.919, -28.5983, 337, 4115620)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 8.77071, -23.8111, -25.8268, 89, 4115620)
	spawnMobile("dathomir", "nightsister_sentry", 1800, 10.2853, -23.7165, -29.619, 233, 4115620)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 10.2542, -15.3179, -7.77618, 1, 4115619)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, 8.7239, -14.225, -5.91488, 97, 4115619)
	spawnMobile("dathomir", "nightsister_protector", 600, 11.7514, -13.8526, -4.7563, 227, 4115619)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 12.3741, -14.8242, -6.63353, 295, 4115619)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -2.73137, -11.6734, -3.2633, 5, 4115619)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -2.16621, -5.30982, 8.76238, 1, 4115619)
	spawnMobile("dathomir", "nightsister_sentinel", 600, 1.77998, -5.01992, 9.49037, 357, 4115619)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -8.84682, -64.6789, -190.422, 2, 4115624)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -8.31083, -64.348, -187.762, 202, 4115624)
	spawnMobile("dathomir", "nightsister_sentinel", 600, -5.83621, -64.0928, -183.144, 80, 4115624)
	spawnMobile("dathomir", "nightsister_protector", 600, -22.6386, -63.8327, -183.004, 78, 4115624)
	spawnMobile("dathomir", "nightsister_spell_weaver", 600, -12.4091, -64.4355, -200.332, 157, 4115624)
	spawnMobile("dathomir", "nightsister_sentry", 600, -10.1777, -65.1082, -203.553, 317, 4115625)
	spawnMobile("dathomir", "nightsister_spell_weaver", 1800, -12.9577, -64.8252, -204.041, 34, 4115625)

	-- Rancor Section
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600, -7.27201, -65.01, -240.346, 91, 4115625)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600, -21.4728, -65.6971, -241.368, 301, 4115625)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -21.4308, -64.5419, -252.541, 175, 4115625)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600, -9.21678, -63.6013, -261.027, 286, 4115625)
	spawnMobile("dathomir", "nightsister_rancor_tamer", 600, -21.3208, -64.475, -220.962, 188, 4115625)
	spawnMobile("dathomir", "nightsister_enraged_rancor", 600, -0.24242, -64.9083, -209.906, 186, 4115625)
	-- New Additions to Cave
	--//////////////////////////////////////////////////////////////////////////////

	self:respawnAxkvaMin()

	local pTrap = spawnSceneObject("dathomir", "object/static/terrain/corellia/rock_crystl_shrpbush_med.iff", -11.5, -64.6, -202.2, 4115624, 0.707107, 0, 0.707107, 0)

	if (pTrap ~= nil) then
		local pActiveArea = spawnActiveArea("dathomir", "object/active_area.iff", -3987.5, 50.23, 188.99, 4, 4115624)
		if pActiveArea ~= nil then
			createObserver(ENTEREDAREA, "NightSisterStrongholdScreenPlay", "notifyEnteredTrapArea", pActiveArea)
		end

		local pSwitch = spawnSceneObject("dathomir", "object/tangible/dungeon/cave_stalagmite_ice_style_01.iff", -8.88, -65, -189.23, 4115624, 0.707107, 0, 0.707107, 0)

		if (pSwitch ~= nil) then
			createObserver(OBJECTRADIALUSED, "NightSisterStrongholdScreenPlay", "notifyTrapSwitchUsed", pSwitch);
			spawnSceneObject("dathomir", "object/static/particle/pt_light_blink_blue.iff", -8.88, -65, -189.23, 4115624, 0.707107, 0, 0.707107, 0)

			self:enableTrap()
		end
	end
end

function NightSisterStrongholdScreenPlay:enableTrap()
	local pTrapEffect = spawnSceneObject("dathomir", "object/static/particle/pt_poi_electricity_2x2.iff", -11.5, -64.6, -202.2, 4115624, 0.707107, 0, 0.707107, 0)

	if (pTrapEffect ~= nil) then
		writeData("NightSisterStrongholdScreenPlay:trapEffect", SceneObject(pTrapEffect):getObjectID())
	end
end

function NightSisterStrongholdScreenPlay:notifyTrapSwitchUsed(pSwitch, pPlayer)
	if (pSwitch == nil) then
		return 1
	end

	if (pPlayer == nil) then
		return 0
	end

	local effectID = readData("NightSisterStrongholdScreenPlay:trapEffect")

	if (effectID == 0) then
		CreatureObject(pPlayer):sendSystemMessage("@dungeon/nightsister_rancor_cave:power_already_off")
	else
		local pEffect = getSceneObject(effectID)

		if (pEffect ~= nil) then
			SceneObject(pEffect):destroyObjectFromWorld()
		end

		CreatureObject(pPlayer):sendSystemMessage("@dungeon/nightsister_rancor_cave:power_off")
		deleteData("NightSisterStrongholdScreenPlay:trapEffect")
		createEvent(7 * 1000, "NightSisterStrongholdScreenPlay", "enableTrap", nil, "")
	end

	return 0
end

function NightSisterStrongholdScreenPlay:notifyEnteredTrapArea(pActiveArea, pPlayer)
	if (pActiveArea == nil) then
		return 1
	end

	if (pPlayer == nil) then
		return 0
	end

	if (readData("NightSisterStrongholdScreenPlay:trapEffect") == 0) then
		return 0
	end

	spawnSceneObject("dathomir", "object/static/particle/pt_magic_sparks.iff", -11.5, -64.6, -202.2, 4115624, 0.707107, 0, 0.707107, 0)
	playClientEffectLoc(SceneObject(pPlayer):getObjectID(), "clienteffect/trap_electric_01.cef", "dathomir", -11.5, -64.6, -202.2, 4115624)

	CreatureObject(pPlayer):sendSystemMessage("@dungeon/nightsister_rancor_cave:shock")
	local trapDmg = getRandomNumber(400, 700)
	CreatureObject(pPlayer):inflictDamage(pPlayer, 0, trapDmg, 1)

	return 0
end

function NightSisterStrongholdScreenPlay:respawnAxkvaMin()
	local pAxkvaMin = spawnMobile("dathomir", "axkva_min", 0, -90.5, -101, -102.2, 172, 4115629)

	if (pAxkvaMin ~= nil) then
		createObserver(STARTCOMBAT, "NightSisterStrongholdScreenPlay", "spawnGuards", pAxkvaMin)
		createObserver(OBJECTDESTRUCTION, "NightSisterStrongholdScreenPlay", "axkvaKilled", pAxkvaMin)
	end
end

function NightSisterStrongholdScreenPlay:axkvaKilled(pAxkvaMin)
	createEvent(86400 * 1000, "NightSisterStrongholdScreenPlay", "respawnAxkvaMin", nil, "")

	return 1
end

function NightSisterStrongholdScreenPlay:spawnGuards(pAxkvaMin)
	if (pAxkvaMin == nil or CreatureObject(pAxkvaMin):isDead()) then
		return 1
	end

	spatialChat(pAxkvaMin, "@dungeon/nightsister_rancor_cave:protect")

	for i = 1, #self.axkvaGuards, 1 do
		local guardID = readData("axkvaGuard:" .. i)

		local pGuard = getSceneObject(guardID)

		if (pGuard == nil or CreatureObject(pGuard):isDead()) then
			local guardData = self.axkvaGuards[i]
			pGuard = spawnMobile("dathomir", "nightsister_protector", 0, guardData[1], guardData[2], guardData[3], guardData[4], guardData[5])

			if (pGuard ~= nil) then
				writeData("axkvaGuard:" .. i, SceneObject(pGuard):getObjectID())
			end
		end
	end

	return 1
end
