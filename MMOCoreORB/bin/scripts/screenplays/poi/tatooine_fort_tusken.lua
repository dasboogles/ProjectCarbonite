FortTuskenScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "FortTuskenScreenPlay",

	lootContainers = {
		7875788,
		7875790,
		7875792,
		7875791,
		7875789
	},

	lootLevel = 150,

	lootGroups = {
		{
			{
				groups = {
					{group = "color_crystals", chance = 10000000}
				},
				lootChance = 500000
			},
			{
				groups = {
					{group = "clothing_attachments", chance = 10000000}
				},
				lootChance = 500000
			},
			{
				groups = {
					{group = "armor_attachments", chance = 10000000}
				},
				lootChance = 500000
			},
			{
				groups = {
					{group = "pistols", chance = 10000000}
				},
				lootChance = 2500000
			},
			{
				groups = {
					{group = "carbines", chance = 10000000}
				},
				lootChance = 2500000
			},
			{
				groups = {
					{group = "rifles", chance = 10000000}
				},
				lootChance = 2500000
			},
			{
				groups = {
					{group = "melee_baton", chance = 10000000}
				},
				lootChance = 2500000
			}
		}
	},

	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("FortTuskenScreenPlay", true)

function FortTuskenScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function FortTuskenScreenPlay:spawnMobiles()
	--On top of Tusken Pool
	spawnMobile("tatooine", "tusken_berserker",300,-3996.8,60,6285.7,74,0)
	spawnMobile("tatooine", "tusken_war_master",300,-3963.7,60.0,6234.6,-42,0)
	spawnMobile("tatooine", "tusken_avenger",300,-3969.1,60,6282.8,-73,0)
	spawnMobile("tatooine", "tusken_brute",300,-3978.6,60,6266.4,-10,0)
	spawnMobile("tatooine", "tusken_avenger",300,-3979.6,60,6261.4,-2,0)
	spawnMobile("tatooine", "tusken_blood_champion",300,-3.8,37.9,-34.1,43,1189186)
	spawnMobile("tatooine", "tusken_guard",300,-2.8,37.9,-20.7,71,1189187)
	spawnMobile("tatooine", "tusken_commoner",300,31,37.9,-30.6,-124,1189189)
	spawnMobile("tatooine", "tusken_elite_guard",300,27,44,-22.4,47,1189192)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,29.6,44,-16.3,175,1189192)
	spawnMobile("tatooine", "tusken_raid_leader",300,22.16,37.9,-18.4,-19,1189191)
	spawnMobile("tatooine", "tusken_commoner",300,20.9,37.9,-31.4,3,1189191)
	spawnMobile("tatooine", "tusken_brute",300,34.0,37.9,-21.6,-79,1189190)
	spawnMobile("tatooine", "tusken_raid_leader",300,32.4,37.9,-16.2,-178,1189190)
	spawnMobile("tatooine", "tusken_blood_champion",300,33.1,37.9,-2.0,-5,1189196)
	spawnMobile("tatooine", "tusken_raider",300,32.9,37.9,5.5,179,1189196)
	spawnMobile("tatooine", "tusken_commoner",300,26.4,37.0,-0.2,-32,1189194)
	spawnMobile("tatooine", "tusken_blood_champion",300,21.6,37.0,1.4,84,1189194)
	spawnMobile("tatooine", "tusken_avenger",300,27.2,37.0,2.6,-146,1189194)
	spawnMobile("tatooine", "tusken_guard",300,16.5,37.9,-2.8,-5,1189195)
	spawnMobile("tatooine", "tusken_avenger",300,15.7,37.9,6.2,173,1189195)
	spawnMobile("tatooine", "tusken_berserker",300,-1.0,43.7,-3.3,-92,1189188)
	spawnMobile("tatooine", "tusken_elite_guard",300,-6.1,42.3,-6.4,83,1189188)
	spawnMobile("tatooine", "tusken_berserker",300,-6.2,43.3,-0.4,83,1189188)
	spawnMobile("tatooine", "tusken_commoner",300,-3952.1,68.5,6284.3,-115,0)
	spawnMobile("tatooine", "tusken_avenger",300,-3982.0,67.7,6293.8,-5,0)
	spawnMobile("tatooine", "tusken_gore_chief",300,-4006.6,60,6249.2,89,0)
	spawnMobile("tatooine", "tusken_commoner",300,-3951.7,60,6243.1,-162,0)
	spawnMobile("tatooine", "tusken_berserker",300,-3985.1,60,6290.5,-177,0)
	spawnMobile("tatooine", "tusken_blood_champion",300,-3977.7,60,6290.6,174,0)
	spawnMobile("tatooine", "tusken_blood_champion",300,-3979.1,60,6248.6,-91,0)
	spawnMobile("tatooine", "tusken_raider",300,-3985.0,60,6278.7,147,0)
	spawnMobile("tatooine", "tusken_captain",300,-3986.3,66.3,6253.7,124,0)
	spawnMobile("tatooine", "tusken_avenger",300,-3991.6,60,6246.4,-4,0)
	spawnMobile("tatooine", "tusken_commoner",300,-3967.8,60,6231.1,-43,0)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,-3997.1,60,6288.4,112,0)
	spawnMobile("tatooine", "tusken_raider",300,-3969,60,6288.3,-101,0)
	spawnMobile("tatooine", "tusken_brute",300,-3983.4,60,6266.1,6,0)
	spawnMobile("tatooine", "tusken_chief",300,-1.9,37.9,-29.2,100,1189186)
	spawnMobile("tatooine", "tusken_raider",300,2.9,37.9,-15.5,-126,1189187)
	spawnMobile("tatooine", "tusken_elite_guard",300,24.2,37.9,-31.6,71,1189189)
	spawnMobile("tatooine", "tusken_raider",300,27.6,37.9,-26,177,1189189)
	spawnMobile("tatooine", "tusken_warlord",300,-4.6,37.9,-30.1,118,1189186)
	spawnMobile("tatooine", "tusken_avenger",300,-3.2,37.9,-16.2,109,1189187)
	spawnMobile("tatooine", "tusken_warlord",300,28.9,44,-29.2,0,1189193)

	--Tusken Fort Pool
	spawnMobile("tatooine", "tusken_warlord",300,-5.6,1.7,53.9,118,1189174)
	spawnMobile("tatooine", "tusken_avenger",300,-8.1,2.1,55.7,109,1189174)
	spawnMobile("tatooine", "tusken_brute",300,-9.4,2.1,54.8,0,1189174)
	spawnMobile("tatooine", "tusken_death_hunter",300,-16.4,1.1,36.2,118,1189174)
	spawnMobile("tatooine", "tusken_warlord",300,-13.8,1.2,37.5,109,1189174)
	spawnMobile("tatooine", "tusken_raid_leader",300,-6.6,1.3,23.6,0,1189174)
	spawnMobile("tatooine", "tusken_chief",300,2.0,1.3,10.0,118,1189174)
	spawnMobile("tatooine", "tusken_warlord",300,-0.9,1.3,9.6,109,1189174)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,0.6,1.4,12.7,0,1189174)
	spawnMobile("tatooine", "tusken_witch_doctor",900,1.3,1.5,-10.8,118,1189175)
	spawnMobile("tatooine", "tusken_observer",300,0.8,1.7,-7.5,-11,1189175)
	spawnMobile("tatooine", "tusken_executioner",900, -1.54, 1.58, 0.90,-102,1189175)
	spawnMobile("tatooine", "tusken_avenger",300,-4.7,1.5,-7.0,0,1189175)
	spawnMobile("tatooine", "tusken_warlord",300,-12.6,2.9,1.0,109,1189175)
	spawnMobile("tatooine", "tusken_chief",300,-15.9,3.4,-2.4,118,1189176)
	spawnMobile("tatooine", "tusken_warlord",300,-17.8,4.0,12.3,173,1189176)
	spawnMobile("tatooine", "tusken_blood_champion",300,-23.7,2.7,3.4,-145,1189176)
	spawnMobile("tatooine", "tusken_elite_guard",300,-28.5,2.7,1.3,0,1189176)
	spawnMobile("tatooine", "tusken_gore_chief",300,-20.4,4.3,-11.1,0,1189177)
	spawnMobile("tatooine", "tusken_carnage_champion",300,-14.6,6.2,-20.5,0,1189177)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,-10.3,6.6,-21.8,118,1189177)
	spawnMobile("tatooine", "tusken_raid_leader",300,2.9,8.4,-28.2,-95,1189178)
	spawnMobile("tatooine", "tusken_warlord",300,0.7,8.0,-18.9,109,1189178)
	spawnMobile("tatooine", "tusken_witch_doctor",900,2.17, 8.36, -32.02,118,1189178)
	spawnMobile("tatooine", "tusken_executioner", 900, 6.54, 8.0, -34.17, 180, 1189178)
	spawnMobile("tatooine", "tusken_observer",300,8.5,8.2,-33.5,0,1189178)
	spawnMobile("tatooine", "tusken_observer",300,1.2,8.15,-20.5,0,1189178)
	spawnMobile("tatooine", "tusken_observer",300,3.07, 8.31, -39.26,0,1189178)
	spawnMobile("tatooine", "tusken_blood_champion",300,11.5,8.0,-40.7,118,1189178)
	spawnMobile("tatooine", "tusken_warlord",300,7.1,8.4,-44.9,109,1189178)
	spawnMobile("tatooine", "tusken_death_hunter",300,-0.2,8.4,-33.6,118,1189178)
	spawnMobile("tatooine", "tusken_raid_leader",300,-1.2,8.6,-40.1,0,1189179)
	spawnMobile("tatooine", "tusken_chief",300,-13.2,11.0,-39.5,109,1189179)
	spawnMobile("tatooine", "tusken_elite_guard",300,-18.3,12.6,-46.6,0,1189179)
	spawnMobile("tatooine", "tusken_brute",300,-20.9,12.9,-44.7,118,1189179)
	spawnMobile("tatooine", "tusken_avenger",300,-20.5,15.3,-53.9,109,1189179)
	spawnMobile("tatooine", "tusken_torture_lord",300,-15.3,16.9,-53.7,0,1189179)
	spawnMobile("tatooine", "tusken_blood_champion",300,-3.5,8.9,-43.4,97,1189179)
	spawnMobile("tatooine", "tusken_warlord",300,-6.9,20.2,-55.9,0,1189180)
	spawnMobile("tatooine", "tusken_avenger",300,9.1,22.6,-44.8,-122,1189180)
	spawnMobile("tatooine", "tusken_death_hunter",300,17.8,22.2,-55.2,117,1189180)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,26.8,21.0,-23.6,-137,1189181)
	spawnMobile("tatooine", "tusken_brute",300,31.3,22.7,-34.8,-83,1189181)
	spawnMobile("tatooine", "tusken_warlord",300,32.9,23.1,-45.9,72,1189181)
	spawnMobile("tatooine", "tusken_war_master",300,27.8,22.3,-40.5,74,1189181)
	spawnMobile("tatooine", "tusken_chief",300,14.0,22.6,5.2,58,1189182)
	spawnMobile("tatooine", "tusken_warlord",300,25.3,22,11.4,91,1189182)
	spawnMobile("tatooine", "tusken_brute",300,29.1,21.9,10.1,-88,1189182)
	spawnMobile("tatooine", "tusken_warlord",300,37.2,22.9,19.7,165,1189182)
	spawnMobile("tatooine", "tusken_death_hunter",300,38.0,20.8,-3.6,-51,1189182)
	spawnMobile("tatooine", "tusken_chief",300,31,21.5,-9.4,167,1189182)
	spawnMobile("tatooine", "tusken_death_hunter",300,32.0,22.1,2.6,90,1189182)
	spawnMobile("tatooine", "tusken_executioner",900,20.8,22.9,-15.2,-102,1189183)
	spawnMobile("tatooine", "tusken_gore_chief",300,15.1,22.8,-17.0,163,1189183)
	spawnMobile("tatooine", "tusken_brute",300,2.5,22.9,-19.2,101,1189183)
	spawnMobile("tatooine", "tusken_carnage_champion",300,8.7,23,-28.5,121,1189183)
	spawnMobile("tatooine", "tusken_warlord",300,3.5,23.1,-12.2,10,1189183)
	spawnMobile("tatooine", "tusken_death_hunter",300,-0.4,24.0,-4.7,66,1189184)
	spawnMobile("tatooine", "tusken_brute",300,-4.5,26.2,9.5,151,1189185)
	spawnMobile("tatooine", "tusken_flesh_hunter",300,-14.9,31.5,14.3,168,1189185)
	spawnMobile("tatooine", "tusken_carnage_champion",300,-3.7,25.4,6.7,-24,1189185)
	spawnMobile("tatooine", "tusken_gore_chief",300,-6.7,25.4,7.3,65,1189185)
	spawnMobile("tatooine", "tusken_warlord",300,-7.4,28.3,20.8,172,1189185)
	spawnMobile("tatooine", "tusken_blood_champion",300,-7.5,37.9,11.6,-136,1189185)
	spawnMobile("tatooine", "tusken_warlord",300,-11.0,37.9,7.8,46,1189185)
	spawnMobile("tatooine", "tusken_war_master",300,3.1,37.9,-21.5,-55,1189187)

	-------------------------------------------------------------------------------------
	------------------------------Carbonite Additions------------------------------------
	-------------------------------------------------------------------------------------
	-- Above Pool
	spawnMobile("tatooine", "tusken_guard", 300, -3986.09, 60, 6298.79, 353, 0)
	spawnMobile("tatooine", "tusken_guard", 300, -3973, 60, 6300.04, 341, 0)
	spawnMobile("tatooine", "tusken_guard", 300, -3983.61, 60, 6295.32, 7, 0)
	spawnMobile("tatooine", "tusken_commoner", 300, -3979.93, 60, 6293.73, 348, 0)
	spawnMobile("tatooine", "tusken_guard", 300, -3993.57, 60, 6306.3, 299, 0)
	spawnMobile("tatooine", "tusken_guard", 300, -3994.87, 60, 6309.75, 208, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3998.09, 60, 6309.05, 120, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3962.27, 60, 6305.17, 14, 0)
	spawnMobile("tatooine", "tusken_gore_chief", 300, -3958.85, 60, 6308.32, 272, 0)
	spawnMobile("tatooine", "tusken_elite_guard", 300, -4004.45, 60, 6301.39, 208, 0)
	spawnMobile("tatooine", "tusken_blood_champion", 300, -4013.49, 60, 6298.94, 149, 0)
	spawnMobile("tatooine", "tusken_war_master", 300, -3967.96, 60, 6302.57, 144, 0)
	spawnMobile("tatooine", "tusken_raider", 300, -3952.64, 60, 6295.68, 242, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3954.96, 60, 6298.25, 309, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3990.56, 60, 6285.36, 106, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, -3994.45, 60, 6276.91, 2, 0)
	spawnMobile("tatooine", "tusken_raider", 300, -3976.73, 60, 6271.49, 273, 0)
	spawnMobile("tatooine", "tusken_commoner", 300, -3974.56, 60, 6284.32, 77, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, 1.97583, 37.9261, -30.7195, 240, 1189186)
	spawnMobile("tatooine", "tusken_elite_guard", 300, 1.54945, 37.9261, -32.4889, 291, 1189186)
	spawnMobile("tatooine", "tusken_raider", 300, 24.4874, 37.942, -29.2753, 245, 1189189)
	spawnMobile("tatooine", "tusken_brute", 300, 31.0738, 37.9421, -27.9963, 103, 1189189)
	spawnMobile("tatooine", "tusken_brute", 300, 31.2953, 37.942, -18.6322, 311, 1189190)
	spawnMobile("tatooine", "tusken_avenger", 300, 26.7117, 37.942, -18.7818, 250, 1189190)
	spawnMobile("tatooine", "tusken_raider", 300, 26.8954, 37.942, -17.1968, 281, 1189190)
	spawnMobile("tatooine", "tusken_war_master", 300, 30.59, 37.942, -14.5161, 190, 1189190)
	spawnMobile("tatooine", "tusken_avenger", 300, 34.5429, 37.942, -19.2521, 112, 1189190)
	spawnMobile("tatooine", "tusken_avenger", 300, 23.5264, 37.942, -22.0313, 90, 1189191)
	spawnMobile("tatooine", "tusken_commoner", 300, 19.8158, 37.942, -23.9807, 266, 1189191)
	spawnMobile("tatooine", "tusken_brute", 300, 30.8094, 43.9613, -21.3522, 97, 1189192)
	spawnMobile("tatooine", "tusken_blood_champion", 300, 27.4417, 43.9658, -31.5079, 223, 1189193)
	spawnMobile("tatooine", "tusken_elite_guard", 300, 30.2977, 43.9627, -31.6697, 138, 1189193)
	spawnMobile("tatooine", "tusken_war_master", 300, 32.5195, 43.9586, -18.1022, 330, 1189192)
	spawnMobile("tatooine", "tusken_avenger", 300, 1.0059, 37.9261, -18.6686, 273, 1189187)
	spawnMobile("tatooine", "tusken_gore_chief", 300, -1.21032, 37.9261, -18.4348, 89, 1189187)
	spawnMobile("tatooine", "tusken_brute", 300, -3994.2, 60, 6246.32, 341, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, -3989.37, 60, 6245.77, 55, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, 24.4688, 36.9505, 4.69323, 2, 1189194)
	spawnMobile("tatooine", "tusken_war_master", 300, 31.093, 37.9421, 4.91734, 5, 1189196)
	spawnMobile("tatooine", "tusken_avenger", 300, 35.1457, 37.942, 5.67872, 34, 1189196)
	spawnMobile("tatooine", "tusken_raider", 300, 14.7667, 37.942, -3.46546, 190, 1189195)
	spawnMobile("tatooine", "tusken_commoner", 300, 14.3634, 37.942, 4.36281, 328, 1189195)
	spawnMobile("tatooine", "tusken_avenger", 300, -4012.57, 67.7578, 6269.3, 258, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -4012.48, 67.7559, 6271.87, 266, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -4001.24, 68.5068, 6284.45, 133, 0)
	spawnMobile("tatooine", "tusken_blood_champion", 300, -4008.72, 68.5059, 6293.03, 107, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, -4008.79, 68.5078, 6289.42, 84, 0)
	spawnMobile("tatooine", "tusken_raider", 300, -4004.38, 72.915, 6293.32, 221, 0)
	spawnMobile("tatooine", "tusken_war_master", 300, -4004.73, 73.1113, 6287.18, 326, 0)
	spawnMobile("tatooine", "tusken_elite_guard", 300, -4010.3, 73.1123, 6293.44, 205, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, -4010.17, 70.7334, 6287.1, 87, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3990.18, 67.7568, 6294.78, 177, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3971.69, 67.7559, 6294.23, 189, 0)
	spawnMobile("tatooine", "tusken_raider", 300, -3951.45, 67.7559, 6268.85, 192, 0)
	spawnMobile("tatooine", "tusken_blood_champion", 300, -3964.31, 60, 6228.81, 332, 0)
	spawnMobile("tatooine", "tusken_war_master", 300, -3962.44, 60, 6230.73, 306, 0)
	spawnMobile("tatooine", "tusken_gore_chief", 300, -3958.13, 60, 6235.9, 262, 0)
	spawnMobile("tatooine", "tusken_brute", 300, -3958.01, 60, 6281.17, 269, 0)
	spawnMobile("tatooine", "tusken_avenger", 300, -3959.37, 60, 6281.28, 89, 0)
	--------------------------------
	-- Underground tunnels
	--King
	spawnMobile("tatooine", "tusken_king", 1800, -22.1577, 3.83799, 10.4815, 165, 1189176)
	-- King's Guard
	spawnMobile("tatooine", "tusken_executioner", 900, -16.8909, 3.28242, 9.26107, 102, 1189176)
	spawnMobile("tatooine", "tusken_torture_lord", 300, -16.1819, 3.23275, 7.49179, 35, 1189176)
	spawnMobile("tatooine", "tusken_torture_lord", 300, -26.256, 3.46879, 6.96159, 244, 1189176)
	spawnMobile("tatooine", "tusken_executioner", 900, -14.9581, 3.49896, -0.449103, 109, 1189176)
	spawnMobile("tatooine", "tusken_witch_doctor", 900, -25.3458, 3.27424, -3.9055, 163, 1189176)
	spawnMobile("tatooine", "tusken_witch_doctor", 900, -27.624, 3.36296, -4.64515, 146, 1189176)
	-------------------------------------------------------------------------------------
	------------------------------Carbonite Additions------------------------------------
	-------------------------------------------------------------------------------------
end
