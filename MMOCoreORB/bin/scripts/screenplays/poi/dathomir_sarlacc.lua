DathomirSarlaccScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DathomirSarlaccScreenPlay",

}

registerScreenPlay("DathomirSarlaccScreenPlay", true)

function DathomirSarlaccScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()

	end
end

function DathomirSarlaccScreenPlay:spawnMobiles()

	spawnMobile("dathomir", "mutant_rancor", 600, -2096.8, 29.2, 3186.8, -40, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2077.2, 41.8, 3249.2, 0, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2016.8, 37.9, 3225.3, 140, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2032.2, 32.9, 3185.2, -94, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2065.2, 21.2, 3156.0, -94, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2060.2, 24.8, 3107.7, -168, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2028.3, 26.3, 3091.1, 84, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -1965.2, 45.7, 3146.2, -4, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -1944.2, 25.4, 3070.8, -114, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -1986.1, 25.8, 2986.7, 134, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2046.2, 34.3, 3014.0, -154, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2064.1, 39.0, 2967.1, 171, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2125.6, 29.1, 3009.9, -104, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2147.1, 44.3, 3071.2, -33, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2145.9, 23.9, 3153.2, -84, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2246.0, 44.4, 3211.5, -64, 0)
	spawnMobile("dathomir", "mutant_rancor", 600, -2169.7, 28.2, 3293.6, -11, 0)

	spawnMobile("dathomir", "monstrous_brute", 600, -2038.7, 32.7, 3310.1, 3, 0)
	spawnMobile("dathomir", "monstrous_brute", 600, -1923.2, 46.8, 3226.5, 43, 0)
	spawnMobile("dathomir", "ancient_bull_rancor", 180, -2210.3, 32.1, 3039.9, 0, 0)

	spawnMobile("dathomir", "mutant_baz_nitch", 600, -2132.8, 26.7, 3280.0, 76, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -2128.8, 26.8, 3286.6, -176, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -2124.6, 26.9, 3280.5, 146, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -1965.2, 42.5, 3208.5, -175, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -1960.4, 43.1, 3200.5, -106, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -1967.6, 44.1, 3196.3, -146, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -1960.7, 44.6, 3190.5, 146, 0)
	spawnMobile("dathomir", "mutant_baz_nitch", 600, -1949.6, 43.9, 3191.5, 46, 0)

	spawnMobile("dathomir", "disturbed_bolma", 600, -1905.1, 48.3, 3151.9, 0, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -1898.1, 47.8, 3151.9, 0, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -1891.1, 47.3, 3151.9, 0, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -2002.2, 21.6, 3057.1, -90, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -2002.2, 21.3, 3050.1, -90, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -2002.2, 21.0, 3043.1, -90, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -2200.4, 28.1, 3132.1, -110, 0)
	spawnMobile("dathomir", "disturbed_bolma", 600, -2208.4, 28.5, 3139.5, -110, 0)

	spawnMobile("dathomir", "nocuous_kamurith", 600, -2140.5, 26.0, 3210.5, 180, 0)
	spawnMobile("dathomir", "nocuous_kamurith", 600, -2159.9, 24.4, 3180.5, 171, 0)
	spawnMobile("dathomir", "nocuous_kamurith", 600, -2113.0, 20.0, 3140.5, -161, 0)
	spawnMobile("dathomir", "nocuous_kamurith", 600, -2002.9, 43.2, 3142.0, 1, 0)
	spawnMobile("dathomir", "nocuous_kamurith", 600, -2171.9, 27.6, 2992.5, -18, 0)

	-- New Additions
	-- Gar'Vak
	spawnMobile("dathomir", "gar_vak", 1800, -2081.93, 22.3004, 3162.58, 174, 0)

	-- Feral Mutant Rancors below here 
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2095.56, 21.8569, 3161.79, 313, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2092.23, 21.2248, 3122.52, 207, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2068.06, 22.8949, 3122, 140, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2044.84, 24.5639, 3122.71, 116, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2041.81, 28.1419, 3137.95, 65, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2053.08, 27.518, 3180.09, 345, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2070.95, 30.9999, 3198.07, 196, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2059.68, 29.9404, 3193.67, 208, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2102.3, 32.8489, 3202.44, 160, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2128.6, 22.6885, 3172.13, 109, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2130.65, 25.997, 3132.08, 63, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2113.82, 34.8498, 3101.06, 41, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2078.08, 29.083, 3089.16, 5, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2046.72, 25.2469, 3088.09, 356, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2012.17, 33.5721, 3119, 83, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2008.5, 40.9948, 3181.88, 33, 0)
	spawnMobile("dathomir", "feral_mutant_bull_rancor", 600, -2021.03, 35.8283, 3199.33, 317, 0)
	-- New Additions

end
