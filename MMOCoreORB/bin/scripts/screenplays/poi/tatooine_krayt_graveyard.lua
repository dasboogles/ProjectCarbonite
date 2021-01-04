KraytGraveyardScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("KraytGraveyardScreenPlay", true)

function KraytGraveyardScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function KraytGraveyardScreenPlay:spawnMobiles()
	-- ///////////////////////////////////////////////////////////////////////////////////////////
	-- Original
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7227.5, 33.2, 4495.8, -116, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 7233.2, 30.1, 4487.1, -116, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7178, 24.5, 4429.9, -100, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 7172.0, 22.5, 4441.0, -100, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7035.7, 22.8, 4337.2, -55, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 7043.2, 22.2, 4344.3, -55, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 6872.9, 41.7, 4246.9, -99, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 6877.9, 45.5, 4237.0, -99, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 6564.1, 87.7, 4484.8, 133, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 6575.9, 92.5, 4487.7, 133, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7523.5, 4.5, 4655.5, -163, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 7513.0, 4.1, 4656.1, -163, 0)

	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7515.6, 8.7, 4556.5, -35, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7417.3, 7.7, 4597.9, -128, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7300.1, 23.3, 4461.9, -156,0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7140.4, 57, 4322.5, -86, 0)

	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7555.4, 15.1, 4488.8, -90, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7429.9, 7.1, 4477.3, 0, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 6836.7, 25.4, 4321.8, -150, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7491.3, 8.4, 4484.8, -150, 0)

	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7525.1, 28.3, 4387.5, -74, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7269.8, 62.4, 4352.7, -77,0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7077.4, 20.0, 4447.3, -123, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7003.0, 86.3, 4200.4, 10, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 6726.8, 19.5, 4288.6, -91, 0)
	-- ///////////////////////////////////////////////////////////////////////////////////////////
	-- Additions 
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 6333.63, 52.6025, 4204.82, 354, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 6325.49, 53.8487, 4253.15, 174, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 6814.43, 34.9038, 4232.53, 231, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 6946.01, 14.5055, 4352.03, 43, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 6971.7, 15.2198, 4363.06, 269, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7041.51, 10.0099, 4404.12, 109, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7233.69, 66.3174, 4318.77, 313, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7201.1, 72.2181, 4268.85, 358, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 900, 7246.46, 24.5317, 4448.58, 39, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7278.26, 31.7398, 4499.59, 218, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7367.59, 13.1634, 4496.25, 45, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7440.16, 7.26049, 4574.59, 45, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7549.53, 9.77493, 4650.85, 346, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7454.31, 5.24175, 4682.5, 148, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7426.1, 5.61664, 4682.08, 170, 0)

	-- Queen
	spawnMobile("tatooine", "krayt_dragon_queen", 3600, 7530.68, 7.32994, 4788.27, 191, 0)

	-- Queen Guards
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7599.91, 25.459, 4825.1, 179, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7484.97, 7.367, 4835.12, 226, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7445.1, 8.06439, 4762.51, 202, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7523.5, 17.182, 4940.59, 11, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7573.73, 30.6151, 4957.57, 5, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7551.08, 18.7743, 5082.18, 5, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7600.64, 38.2909, 5139.74, 352, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7551.57, 23.7576, 5177.81, 357, 0)
	-- ///////////////////////////////////////////////////////////////////////////////////////////
end
