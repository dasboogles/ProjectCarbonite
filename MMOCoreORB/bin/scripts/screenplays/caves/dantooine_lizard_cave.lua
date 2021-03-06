LizardCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LizardCaveScreenPlay",

}

registerScreenPlay("LizardCaveScreenPlay", true)

function LizardCaveScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function LizardCaveScreenPlay:spawnMobiles()

	-- spawnMobile( zone, mobile, respawn, x, y, z, heading, cell )
	-- voritor_lizard CL22
	-- voritor_dasher CL30
	-- grassland_voritor_tracker CL45
	-- horned_voritor_lizard CL53
	-- slinking_voritor_hunter CL57
	
	-- Cell 8535539
	spawnMobile("dantooine", "voritor_lizard", 240, 21.760, -42.017, -65.515, 8.926, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 24.077, -42.523, -66.183, 1.738, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 25.571, -42.597, -64.250, 56.130, 8535539)
	spawnMobile("dantooine", "voritor_dasher", 240, 27.312, -41.837, -60.359, 19.055, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 28.018, -43.482, -68.823, 19.908, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 44.912, -47.290, -29.021, -177.829, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 42.212, -46.239, -27.302, -120.821, 8535539)
	spawnMobile("dantooine", "voritor_dasher", 240, 46.014, -47.441, -26.657, -163.767, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 44.192, -46.779, -5.331, 178.254, 8535539)
	spawnMobile("dantooine", "voritor_dasher", 240, 45.570, -47.166, -9.481, 160.761, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 43.264, -46.909, -12.460, 169.094, 8535539)
	
	-- Cell 8535539 (Alcove)
	spawnMobile("dantooine", "voritor_lizard", 240, 52.554, -67.905, -45.620, 101.773, 8535539)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 52.955, -67.979, -43.690, 9.053, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 56.401, -68.511, -38.735, 84.611, 8535539)
	spawnMobile("dantooine", "voritor_dasher", 240, 58.296, -68.663, -41.529, 78.881, 8535539)
	
	-- Cell 8535540
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 93.984, -62.319, -17.336, 70.119, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 90.502, -61.936, -14.126, -100.567, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 91.977, -61.683, -12.733, -99.244, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 84.013, -63.262, -20.888, -116.243, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 88.838, -62.839, -21.151, 64.944, 8535540)
	spawnMobile("dantooine", "voritor_dasher", 240, 82.839, -68.181, -39.295, 4.116, 8535540)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 84.836, -68.086, -39.546, 78.668, 8535540)
	
	-- Cell 8535541
	spawnMobile("dantooine", "voritor_dasher", 240, 94.256, -75.689, -69.152, 66.542, 8535541)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 94.246, -75.689, -69.144, 56.139, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 90.626, -76.248, -70.429, 6.038, 8535541)
	spawnMobile("dantooine", "voritor_dasher", 240, 92.067, -76.134, -72.352, 140.193, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 60.868, -76.312, -79.295, 7.240, 8535541)
	spawnMobile("dantooine", "voritor_dasher", 240, 62.514, -76.569, -77.483, 23.437, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 61.265, -76.407, -77.103, 2.890, 8535541)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 65.369, -76.885, -77.933, 102.814, 8535541)
	
	-- Cell 8535543
	spawnMobile("dantooine", "voritor_lizard", 240, 61.998, -65.481, -139.743, 8.992, 8535543)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 61.777, -65.857, -138.165, 7.969, 8535543)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 63.010, -66.384, -136.500, 45.978, 8535543)
	spawnMobile("dantooine", "voritor_dasher", 240, 64.321, -66.164, -138.770, 27.952, 8535543)
	
	-- Cell 8535544
	spawnMobile("dantooine", "voritor_lizard", 240, 81.445, -65.913, -136.373, -93.446, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 79.811, -65.673, -137.568, 84.788, 8535544)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 83.323, -66.215, -137.181, 75.769, 8535544)
	
	-- Cell 8535542
	spawnMobile("dantooine", "voritor_lizard", 240, 97.121, -65.725, -112.859, -164.946, 8535542)
	spawnMobile("dantooine", "voritor_dasher", 240, 96.263, -66.103, -109.685, -147.274, 8535542)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 96.887, -65.733, -111.373, 99.775, 8535542)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 93.460, -66.327, -111.030, -154.576, 8535542)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 91.293, -67.378, -108.165, -156.957, 8535542)
	
	-- Cell 8535545
	spawnMobile("dantooine", "voritor_lizard", 240, 131.259, -66.362, -113.777, 45.641, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 128.998, -66.563, -110.709, 45.811, 8535545)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 128.442, -66.645, -108.273, -121.395, 8535545)
	spawnMobile("dantooine", "voritor_dasher", 240, 132.753, -66.845, -123.535, 158.367, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 126.040, -66.264, -124.947, 68.913, 8535545)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 124.047, -66.279, -127.434, 73.805, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 129.005, -66.613, -129.858, 123.800, 8535545)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 146.676, -66.095, -129.911, 69.327, 8535545)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 146.383, -67.245, -123.293, 63.859, 8535545)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 152.210, -66.317, -125.843, -104.211, 8535545)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 151.361, -66.730, -119.473, 3.631, 8535545)
	spawnMobile("dantooine", "voritor_dasher", 240, 150.572, -66.763, -118.364, 44.413, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 141.453, -66.825, -89.447, 81.216, 8535545)
	spawnMobile("dantooine", "horned_voritor_lizard", 240, 136.516, -67.087, -90.002, -108.724, 8535545)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 130.807, -66.278, -98.276, -144.906, 8535545)
	spawnMobile("dantooine", "grassland_voritor_tracker", 240, 135.646, -66.596, -99.549, 79.716, 8535545)
	
	-- Cell 8535546 (Final Alcove)
	spawnMobile("dantooine", "slinking_voritor_hunter", 240, 186.706, -65.422, -93.972, -105.512, 8535546)
	spawnMobile("dantooine", "vexed_voritor_lizard", 240, 193.557, -66.871, -101.828, -105.995, 8535546)

	-- Cell 8535547
	spawnMobile("dantooine", "voritor_lizard", 240, 47.770, -51.878, -87.259, 5.884, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 51.230, -51.600, -86.408, 22.915, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 49.550, -51.704, -83.037, 15.356, 8535547)
	spawnMobile("dantooine", "voritor_dasher", 240, 51.149, -51.391, -89.491, 48.365, 8535547)
	
	-- Cell 8535542 (Upper)
	spawnMobile("dantooine", "voritor_lizard", 240, 94.666, -45.612, -97.346, -147.322, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 96.586, -45.474, -103.480, -145.238, 8535542)
	spawnMobile("dantooine", "voritor_dasher", 240, 91.130, -46.439, -101.309, -113.872, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 91.027, -46.898, -95.322, -147.514, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 80.541, -46.486, -109.031, -147.011, 8535542)
	
	-- Carbonite Enhancement
	spawnMobile("dantooine", "voritor_lizard", 240, -16.4953, -4.00106, -4.53279, 339, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, -14.4066, -4.50798, -3.34396, 317, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, -4.1121, -10.7785, -10.0506, 98, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 0.340216, -13.3028, -5.09797, 111, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 9.69425, -20.8331, -7.094, 260, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 10.0232, -19.4422, -11.2895, 255, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 23.8362, -27.9814, -9.53263, 56, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 22.6389, -26.458, -6.15009, 215, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 25.635, -27.0852, -7.05555, 218, 8535538)
	spawnMobile("dantooine", "voritor_lizard", 240, 22.1586, -35.5137, -26.3894, 349, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 25.488, -36.6124, -26.6105, 357, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 25.6451, -39.7314, -41.942, 195, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 26.5915, -40.3693, -46.2316, 316, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 24.6718, -40.3645, -45.3158, 40, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 34.0149, -44.7349, -65.8213, 97, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 35.3671, -45.4259, -69.7454, 77, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 51.7803, -47.9333, -68.3343, 268, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 52.3938, -48.7354, -63.864, 246, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 51.3517, -48.6067, -56.9296, 244, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 42.2648, -46.6406, -59.0883, 171, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 45.5876, -47.6585, -45.9132, 0, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 41.4673, -47.6171, -44.4522, 1, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 53.2618, -49.1893, -28.5411, 351, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 56.6339, -49.2714, -27.1199, 311, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 57.3025, -50.1792, -17.1818, 263, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 53.812, -49.0468, -7.30208, 224, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 48.4991, -47.6778, -16.5578, 177, 8535539)
	spawnMobile("dantooine", "voritor_lizard", 240, 65.426, -56.321, -17.4747, 89, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 65.9828, -55.4039, -10.5616, 82, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 71.6026, -59.0376, -5.87176, 132, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 79.6774, -61.7275, -9.98593, 226, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 80.0662, -62.6543, -16.0962, 280, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 84.1539, -65.5341, -31.438, 144, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 93.1854, -66.4275, -34.6113, 260, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 90.9456, -68.1225, -41.8427, 293, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 86.1311, -72.6506, -49.7156, 338, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 73.4217, -73.0299, -48.7957, 3, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 65.7654, -69.5718, -39.3156, 262, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 65.1445, -68.0619, -34.3432, 253, 8535540)
	spawnMobile("dantooine", "voritor_lizard", 240, 60.9365, -75.2688, -58.0793, 164, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 66.5123, -75.4158, -57.1161, 168, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 63.2708, -75.4734, -62.2946, 350, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 75.8435, -76.8198, -68.495, 189, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 79.4933, -77.6078, -70.5154, 189, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 88.9157, -76.8017, -73.0847, 218, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 90.0771, -76.7736, -81.1617, 287, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 83.6538, -76.8138, -83.6963, 355, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 75.2886, -77.4096, -85.0982, 339, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 67.8728, -76.9767, -81.8943, 31, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 70.5817, -77.3967, -98.1132, 134, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 77.1891, -79.0666, -96.6311, 122, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 83.9118, -79.5196, -99.7606, 204, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 54.5907, -77.0127, -93.2321, 11, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 51.3213, -76.8815, -91.7994, 31, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 51.5354, -74.9215, -104.064, 168, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 58.4272, -71.6152, -113.632, 171, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 57.9983, -70.1828, -121.126, 188, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 62.5429, -67.4663, -130.9, 130, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 74.6349, -65.913, -141.194, 130, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 81.9068, -65.6738, -141.673, 55, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 91.9984, -67.0855, -134.341, 48, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 91.2936, -66.0188, -125.701, 347, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 93.9109, -66.2589, -117.15, 29, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 106.799, -66.2482, -109.523, 255, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 106.667, -66.4734, -105.091, 276, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 112.682, -67.1767, -90.1779, 337, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 114.464, -67.3007, -87.8656, 307, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 110.723, -65.3809, -129.454, 29, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 141.166, -66.6795, -124.355, 32, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 138.75, -66.4596, -123.305, 177, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 152.396, -66.5302, -110.437, 178, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 156.584, -66.1845, -110.876, 186, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 149.538, -65.7256, -98.3844, 288, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 150.208, -66.0863, -94.4678, 266, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 162.271, -66.986, -99.66, 97, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 165.099, -66.9725, -95.0473, 100, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 180.687, -66.0243, -98.6882, 113, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 182.81, -65.7665, -105.079, 61, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 185.937, -65.5882, -108.003, 36, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 192.087, -66.7009, -108.022, 355, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 192.789, -66.5757, -97.2226, 246, 8535546)
	spawnMobile("dantooine", "voritor_lizard", 240, 112.288, -66.5649, -105.867, 82, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 114.723, -66.1694, -108.709, 129, 8535545)
	spawnMobile("dantooine", "voritor_lizard", 240, 89.0863, -67.0145, -138.384, 261, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 71.2206, -66.5665, -137.02, 286, 8535544)
	spawnMobile("dantooine", "voritor_lizard", 240, 58.5757, -67.4895, -129.548, 343, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 55.2035, -71.5476, -114.117, 2, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 56.8625, -75.2342, -101.462, 348, 8535543)
	spawnMobile("dantooine", "voritor_lizard", 240, 76.9952, -74.8673, -55.761, 15, 8535541)
	spawnMobile("dantooine", "voritor_lizard", 240, 53.2023, -49.2329, -98.0631, 328, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 48.0202, -49.1198, -99.1326, 351, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 59.3849, -47.8997, -107.597, 102, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 61.5316, -47.4919, -103.746, 93, 8535547)
	spawnMobile("dantooine", "voritor_lizard", 240, 70.1553, -46.8373, -109.019, 278, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 71.0559, -46.6142, -105.022, 272, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 89.7152, -46.0116, -120.395, 163, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 94.3194, -46.4823, -120.208, 166, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 97.318, -46.1393, -120.334, 190, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 92.8831, -46.6335, -116.831, 15, 8535542)
	spawnMobile("dantooine", "voritor_lizard", 240, 96.5236, -46.124, -128.675, 347, 8535548)
	spawnMobile("dantooine", "voritor_lizard", 240, 92.2757, -46.553, -129.347, 358, 8535548)
	-- Carbonite Enhancement

end
