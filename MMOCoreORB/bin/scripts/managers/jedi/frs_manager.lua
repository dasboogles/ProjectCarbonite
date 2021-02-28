-- Disabled until I can do a Balance Pass on it!
frsEnabled = 1

-- Object ID of Enclave buildings
lightEnclaveID = 8525417
darkEnclaveID = 3435626

petitionInterval = 604800000 -- 1->7 day
votingInterval = 604800000 -- 1->7 day
acceptanceInterval = 604800000 -- 1->7 day
maintenanceInterval = 604800000 -- 1->7 day

requestDemotionDuration = 604800000 -- 7 days
voteChallengeDuration = 604800000 -- 7 days

arenaOpenInterval = 604800000 -- 900 mins -> 7days
arenaClosedInterval = 604800000 -- 300 hours -> 7days
arenaChallengeDuration = 604800000 -- 600 mins -> 7days
arenaChallengeCooldown = 604800000 -- 250 hours -> 7 days

-- Costs are in FRS experience
baseMaintCost = 0
requestDemotionCost = 0
voteChallengeCost = 0

maxPetitioners = 99
maxChallenges = 99
missedVotePenalty = 0 -- FRS XP

-- { rank, skillName, requiredExperience, playerCap, robe }
-- PlayerCap removed
-- Required Experience set to an impossible value to disable normal progression methods
lightRankingData = {
	{ 0, "force_rank_light_novice", 	0, 		-1, "object/tangible/wearables/robe/robe_jedi_light_s01.iff" },
	{ 1, "force_rank_light_rank_01", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 2, "force_rank_light_rank_02", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 3, "force_rank_light_rank_03", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 4, "force_rank_light_rank_04", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 5, "force_rank_light_rank_05", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s03.iff"},
	{ 6, "force_rank_light_rank_06", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 7, "force_rank_light_rank_07", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 8, "force_rank_light_rank_08", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 9, "force_rank_light_rank_09", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 10, "force_rank_light_rank_10", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
	{ 11, "force_rank_light_master", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
}

darkRankingData = {
	{ 0, "force_rank_dark_novice", 		0, 		-1, "object/tangible/wearables/robe/robe_jedi_dark_s01.iff" },
	{ 1, "force_rank_dark_rank_01", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 2, "force_rank_dark_rank_02", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 3, "force_rank_dark_rank_03", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 4, "force_rank_dark_rank_04", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 5, "force_rank_dark_rank_05", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 6, "force_rank_dark_rank_06", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 7, "force_rank_dark_rank_07", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 8, "force_rank_dark_rank_08", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 9, "force_rank_dark_rank_09", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 10, "force_rank_dark_rank_10", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
	{ 11, "force_rank_dark_master", 	999999, -1, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
}

enclaveRoomRequirements = {
	-- Rank requirements for various rooms removed
	-- Light enclave
	{ 8525444, -1 }, -- entrancehall1
	{ 8525421, -1 }, -- tier1hall1
	{ 8525420, -1 }, -- tier1room
	{ 8525419, -1 }, -- tier1hall2
	{ 8525424, -1 }, -- tier2hall1
	{ 8525423, -1 }, -- tier2room
	{ 8525422, -1 }, -- tier2hall2
	{ 8525433, -1 }, -- tier3hall1
	{ 8525432, -1 }, -- tier3room
	{ 8525431, -1 }, -- tier3hall2
	{ 8525430, -1 }, -- tier4hall1
	{ 8525429, -1 }, -- tier4room
	{ 8525428, -1 }, -- tier4hall2
	{ 8525427, -1 }, -- tier5hall1
	{ 8525426, -1 }, -- tier5room
	{ 8525425, -1 }, -- tier5hall2
	-- Dark enclave
	{ 3435626, -1 }, -- ramp1
	{ 3435644, -1 }, -- hallwayb1
	{ 3435650, -1 }, -- council1
	{ 3435637, -1 }, -- hallwaya1
	{ 3435652, -1 }, -- council3
	{ 3435638, -1 }, -- hallwaya2
	{ 3435653, -1 }, -- council4
	{ 3435645, -1 }, -- hallwayb2
	{ 3435639, -1 }, -- hallwaya3
	{ 3435646, -1 }, -- hallwayb3
	{ 3435651, -1 }, -- council2
	{ 3435640, -1 }, -- hallwaya4
	{ 3435647, -1 }, -- hallwayb4
	{ 3435641, -1 }, -- chamberramp
	{ 3435642, -1 }, -- chamber
}

-- Key followed by values for player rank 0 through 11
-- Key references the player's target
-- Ex: Rank 5 loses to BH, see "bh_lose" key and 6th integer value in same row
frsExperienceValues = {
	{ "nonjedi_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "nonjedi_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "bh_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "bh_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "padawan_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "padawan_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank0_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank0_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank1_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank1_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank2_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank2_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank3_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank3_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank4_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank4_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank5_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank5_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank6_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank6_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank7_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank7_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank8_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank8_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank9_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank9_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank10_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank10_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	--
	{ "rank11_win", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	{ "rank11_lose", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
}
