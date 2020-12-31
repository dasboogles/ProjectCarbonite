/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef RACES_H_
#define RACES_H_

#include "system/lang.h"

const static char* Species[] = {
	"human", 	// human male
	"trandoshan", 	// trandoshan male
	"twilek", 	// twilek male
	"bothan", 	// bothan male
	"zabrak", 	// zabrak male
	"rodian", 	// rodian male
 	"moncal", 	// moncal male
	"wookiee", 	// wookiee male
	"sullustan", 	// sullustan male
	"ithorian",	// ithorian male
	"hutt", 	// male hutt
	"human", 	// human female
	"trandoshan", 	// trandoshan female
	"twilek", 	// twilek female
	"bothan", 	// bothan female
	"zabrak", 	// zabrak female
	"rodian", 	// rodian female
	"moncal", 	// moncal female
	"wookiee", 	// wookiee female
	"sullustan", 	// sullustan female
	"ithorian",  	// ithorian female
	"hutt", 	// female hutt
	"nautolan", 	// male Nautolan
	"togruta", 	// female Togruta
	"chiss", 	// male chiss
	"chiss", 	// female chiss
	"devaronian", 	// male devaronian
	"gran", 	// male gran
	"ishi_tib", 	// male ishi tib
	"nightsister", 	// female nightsister
	"nikto", 	// male nikto
	"quarren", 	// male quarren
	"smc", 		// female singing mountain clan witch
	"weequay" ,	// male weequay
	"aqualish",	// male aqualish
	"aqualish",	// female aqualish
	"bith",		// male bith
	"bith",		// female bith
	"gotal",	// male gotal
	"talz",		// male talz
	"abyssn", 	// abyssn male
	"arcona", 	// arcona male
	"cerean",	// cerean male
	"chadra_fan",   // chadra fan female
	"chadra_fan",	// chadra fan male
	"dug",		// dug male
	"duros",	// duros male
	"ewok",		// ewok male
	"ewok",		// ewok female
	"geonosion",	// geonosion male
	"feeorin",	// feeorin male
	"gungan",	// gungan male
	"iktotchi",	// iktotchi male
	"jenet",	// jenet male
	"kel_dor",	// kel dor male
	"kubaz",	// kubaz male
	"mirialan",	// mirialan female
	"mirialan",	// mirialan male
	"ortolan",	// ortolan male
	"sanyassan",	// sanyassan female
	"sanyassan",	// sanyassan male
	"zelton",	// zelton female
	"zelton",	// zelton male
	"toydarian",	// toydarian male
	"jawa",		// jenet male
};

const static int TemplateSpecies[] = { //hex code for species number
		0,	//human male
		2,	//trandoshan male
		6,	//twilek male
		5,	//bothan male 
		7,	//zabrak male
		1,	//rodian male
		3,	//moncal male
		4,	//wookiee male
		0x31,	//sullustan male
		0x21,	//ithorian male
		0x1F,	//hutt male
		0,	//human female
		2,	//trandoshan female
		6,	//twilek female
		5,	//bothan female
		7,	//zabrak female
		1,	//rodian female
		3,	//moncal female
		4,	//wookiee female
		0x31,	//sullustan female
		0x21,	//ithorian female
		0x1F,	//hutt female
		0xE6,	//nautolan
		0xE7, //togruta
		0xE8, //chiss
		0xE8, //chiss
		0x11, //devaronian
		0x1C, //gran
		0x20, //ishi tib
		0xE9, //nightsister
		0xA2, //nikto
		0x2E, //quarren
		0xEA, //smc
		0x37, //weequay
		9, // aqualish
		9, // aqualish
		0x0C, // bith
		0x0C, //bith
		0x1B, //gotal
		0x32, //talz
		8, // abyssn male
		0x0A, // arcona male
		0xEB, // cerean male
		0x0E, // chadra fan female 
		0x0E, // chadra fan male 
		0x13, // dug male
		0x14, // duros male
		0x16, // ewok male
		0x16, // ewok female
		0xE4, // geonosion male
		0x17, // feeorin male
		0x1D, // gungan male
		0xEC, // iktotchi male
		0xED, // jenet male
		0xEE, // kel dor male
		0x27, // kubaz male
		0xEF, // mirialan female
		0xEF, // mirialan male
		0x2B, // ortolan male
		0xF0, // sanyassan female
		0xF0, // sanyassan male
		0xF1, // zelton female
		0xF1, // zelton male
		0x35,  // toydarian male
		0x22, // jawa

};

const static char* Gender[] = {
	"male", 	// human male
	"male", 	// trandoshan male
	"male", 	// twilek male
	"male", 	// bothan male
	"male", 	// zabrak male
	"male", 	// rodian male
	"male", 	// moncal male
	"male", 	// wookiee male
	"male", 	// sullustan male
	"male", 	// ithorian male
	"male", 	// hutt male
	"female", 	// human female
	"female", 	// trandoshan female
	"female", 	// twilek female
	"female", 	// bothan female
	"female", 	// zabrak female
	"female", 	// rodian female
	"female", 	// moncal female
	"female", 	// wookiee female
	"female", 	// sullustan female
	"female", 	// ithorian female
	"female", 	// hutt female
	"male", 	// nautolan male
	"female", 	// togruta female
	"male", 	// chiss male
	"female", 	// chiss female
	"male", 	// devaronian male
	"male", 	// gran male
	"male", 	// ishi tib male
	"female", 	// nightsister female
	"male", 	// nikto male
	"male", 	// quarren male
	"female", 	// smc female
	"male", 	// weequay male
	"male", 	// aqualish male
	"female", 	// aqualish female
	"male", 	// bith male
	"female", 	// bith female
	"male", 	// gotal male
	"male",		// talz male	
	"male", 	// abyssn male
	"male", 	// arcona male
	"male", 	// cerean male
	"female", 	// chadra fan female 
	"male",	 	// chadra fan male 
	"male", 	// dug male
	"male", 	// duros male
	"male", 	// ewok male
	"male", 	// ewok male
	"male", 	// geonosion male
	"male", 	// feeorin male
	"male", 	// gungan male
	"male", 	// iktotchi male
	"male", 	// jenet male
	"male", 	// kel dor male
	"male", 	// kubaz male
	"female", 	// mirialan female
	"male", 	// mirilan male
	"male", 	// ortolan male
	"female", 	// sanyassan female
	"male", 	// sanyassan male
	"female", 	// zelton female
	"male" , 	// zelton male
	"male" , 	// toydarian male
	"male" , 	// jawa male



};

const static char* RaceStrs[] = {
	"object/creature/player/shared_human_male.iff", 	// human male
	"object/creature/player/shared_trandoshan_male.iff", 	// trandoshan male
	"object/creature/player/shared_twilek_male.iff", 	// twilek male
	"object/creature/player/shared_bothan_male.iff", 	// bothan male
	"object/creature/player/shared_zabrak_male.iff", 	// zabrak male
	"object/creature/player/shared_rodian_male.iff", 	// rodian male
	"object/creature/player/shared_moncal_male.iff", 	// moncal male
	"object/creature/player/shared_wookiee_male.iff", 	// wookiee male
	"object/creature/player/shared_sullustan_male.iff", 	// sullustan male
	"object/creature/player/shared_ithorian_male.iff", 	// ithorian male
	"object/creature/player/shared_hutt_male.iff", 		// hutt male
	"object/creature/player/shared_human_female.iff", 	// human female
	"object/creature/player/shared_trandoshan_female.iff", 	// trandoshan female
	"object/creature/player/shared_twilek_female.iff", 	// twilek female
	"object/creature/player/shared_bothan_female.iff", 	// bothan female
	"object/creature/player/shared_zabrak_female.iff", 	// zabrak female
	"object/creature/player/shared_rodian_female.iff", 	// rodian female
	"object/creature/player/shared_moncal_female.iff", 	// moncal female
	"object/creature/player/shared_wookiee_female.iff", 	// wookiee female
	"object/creature/player/shared_sullustan_female.iff", 	// sullustan female
	"object/creature/player/shared_ithorian_female.iff",  	// ithorian female
	"object/creature/player/shared_hutt_female.iff", 	// hutt female
	"object/creature/player/shared_nautolan_male.iff", 	// nautolan male
	"object/creature/player/shared_togruta_female.iff", 	// togruta female
	"object/creature/player/shared_chiss_male.iff", 	// chiss male
	"object/creature/player/shared_chiss_female.iff", 	// chiss female
	"object/creature/player/shared_devaronian_male.iff", 	// devaronian male
	"object/creature/player/shared_gran_male.iff", 		// gran male
	"object/creature/player/shared_ishi_tib_male.iff", 	// ishi tib male
	"object/creature/player/shared_nightsister_female.iff", // nightsister female
	"object/creature/player/shared_nikto_male.iff", 	// nikto male
	"object/creature/player/shared_quarren_male.iff", 	// quarren male
	"object/creature/player/shared_smc_female.iff", 	// smc female
	"object/creature/player/shared_weequay_male.iff", 	// weequay male
	"object/creature/player/shared_aqualish_male.iff", 	// aqualish male
	"object/creature/player/shared_aqualish_female.iff", 	// aqualish female
	"object/creature/player/shared_bith_male.iff", 		// bith male
	"object/creature/player/shared_bith_female.iff", 	// bith female
	"object/creature/player/shared_gotal_male.iff", 	// gotal male
	"object/creature/player/shared_talz_male.iff", 		// talz male
	"object/creature/player/shared_abyssin_male.iff",
	"object/creature/player/shared_arcona_male.iff",
	"object/creature/player/shared_cerean_male.iff",
	"object/creature/player/shared_chadra_fan_female.iff",
	"object/creature/player/shared_chadra_fan_male.iff",
	"object/creature/player/shared_dug_male.iff",
	"object/creature/player/shared_duros_male.iff",
	"object/creature/player/shared_ewok_female.iff",
	"object/creature/player/shared_ewok_male.iff",
	"object/creature/player/shared_feeorin_male.iff",
	"object/creature/player/shared_geonosian_male.iff",
	"object/creature/player/shared_gungan_male.iff",
	"object/creature/player/shared_iktotchi_male.iff",
	"object/creature/player/shared_jenet_male.iff",
	"object/creature/player/shared_kel_dor_male.iff",
	"object/creature/player/shared_kubaz_male.iff",
	"object/creature/player/shared_mirialan_female.iff",
	"object/creature/player/shared_mirialan_male.iff",
	"object/creature/player/shared_ortolan_male.iff",
	"object/creature/player/shared_sanyassan_female.iff",
	"object/creature/player/shared_sanyassan_male.iff",
	"object/creature/player/shared_zeltron_female.iff",
	"object/creature/player/shared_zeltron_male.iff",
	"object/creature/player/shared_toydarian_male.iff",
	"object/creature/player/shared_jawa_male.iff",


};

const static char* CCRaceStrs[] = {
	"object/creature/player/human_male.iff", 	// human male
	"object/creature/player/trandoshan_male.iff", 	// trandoshan male
	"object/creature/player/twilek_male.iff", 	// twilek male
	"object/creature/player/bothan_male.iff", 	// bothan male
	"object/creature/player/zabrak_male.iff", 	// zabrak male
	"object/creature/player/rodian_male.iff", 	// rodian male
	"object/creature/player/moncal_male.iff", 	// moncal male
	"object/creature/player/wookiee_male.iff", 	// wookiee male
	"object/creature/player/sullustan_male.iff", 	// sullustan male
	"object/creature/player/ithorian_male.iff", 	// ithorian male
	"object/creature/player/hutt_male.iff", 	// hutt male
	"object/creature/player/human_female.iff", 	// human female
	"object/creature/player/trandoshan_female.iff", // trandoshan female
	"object/creature/player/twilek_female.iff", 	// twilek female
	"object/creature/player/bothan_female.iff", 	// bothan female
	"object/creature/player/zabrak_female.iff", 	// zabrak female
	"object/creature/player/rodian_female.iff", 	// rodian female
	"object/creature/player/moncal_female.iff", 	// moncal female
	"object/creature/player/wookiee_female.iff", 	// wookiee female
	"object/creature/player/sullustan_female.iff", 	// sullustan female
	"object/creature/player/ithorian_female.iff",  	// ithorian female
	"object/creature/player/hutt_female.iff", 	//hutt female
	"object/creature/player/nautolan_male.iff", 	//nautolan male
	"object/creature/player/togruta_female.iff", 	//togruta female
	"object/creature/player/chiss_male.iff", 	//chiss male
	"object/creature/player/chiss_female.iff", 	//chiss female
	"object/creature/player/devaronian_male.iff", 	//devaronian male
	"object/creature/player/gran_male.iff", 	//gran male
	"object/creature/player/ishi_tib_male.iff", 	//ishi tib male
	"object/creature/player/nightsister_female.iff",//nightsister female
	"object/creature/player/nikto_male.iff", 	//nikto male
	"object/creature/player/quarren_male.iff", 	//quarren male
	"object/creature/player/smc_female.iff", 	//smc female
	"object/creature/player/weequay_male.iff", 	//weequay male
	"object/creature/player/aqualish_male.iff", 	//aqualish male
	"object/creature/player/aqualish_female.iff", 	//aqualish female
	"object/creature/player/bith_male.iff", 	//bith male
	"object/creature/player/bith_female.iff", 	//bith female
	"object/creature/player/gotal_male.iff", 	//gotal male
	"object/creature/player/talz_male.iff", 	//talz male
	"object/creature/player/abyssin_male.iff",
	"object/creature/player/arcona_male.iff",
	"object/creature/player/cerean_male.iff",
	"object/creature/player/chadra_fan_female.iff",
	"object/creature/player/chadra_fan_male.iff",
	"object/creature/player/dug_male.iff",
	"object/creature/player/duros_male.iff",
	"object/creature/player/ewok_female.iff",
	"object/creature/player/ewok_male.iff",
	"object/creature/player/feeorin_male.iff",
	"object/creature/player/geonosian_male.iff",
	"object/creature/player/gungan_male.iff",
	"object/creature/player/iktotchi_male.iff",
	"object/creature/player/jenet_male.iff",
	"object/creature/player/kel_dor_male.iff",
	"object/creature/player/kubaz_male.iff",
	"object/creature/player/mirialan_female.iff",
	"object/creature/player/mirialan_male.iff",
	"object/creature/player/ortolan_male.iff",
	"object/creature/player/sanyassan_female.iff",
	"object/creature/player/sanyassan_male.iff",
	"object/creature/player/zeltron_female.iff",
	"object/creature/player/zeltron_male.iff",
	"object/creature/player/toydarian_male.iff",
	"object/creature/player/jawa_male.iff",
};

static uint32 SharedRace[] = { //race CRC
	0xAF1DC1A1, // human male
	0x50C45B8F, // trandoshan male
	0xF280E27B, // twi'lek male
	0x5BF77F33, // bothan male
	0xE204A556, // zabrak male
	0x0BF9CD9C, // rodian male
	0xB9C855A8, // moncal male
	0x0564791D, // wookiee male
	0x0B9399A4, // sullustan male
	0x38BAC7C4, // ithorian male
	0x916443F9, // hutt male
	0xFFFFBBE9, // human female
	0x183C24C6, // trandoshan female
	0x849752DC, // twi'lek female
	0x1D52730E, // bothan female
	0xA9E35FFD, // zabrak female
	0xC264245B, // rodian female
	0x982FBFDE, // moncal female
	0x0DAB65E2, // wookiee female
	0x1573341A, // sullustan female
	0xB3E08013, // ithorian female
	0xE0B607C0, // hutt female
	0xAB03ACB1, // nautolan male
	0x3D953B50, // togruta female
	0x02F60EAC, // chiss male
	0x614A1B68, // chiss female
	0x68731058, // devaronian male
	0xC2872D34, // gran male
	0x809EF398, // ishi tib male
	0xC56D9790, // nightsister female
	0x59ECB38B, // nikto male
	0x3435F686, // quarren male
	0x82A138F9, // smc female
	0x4F0718B5, // weequay male
	0xCEF4B4A1, // aqualish male
	0xDE63F629, // aqualish female
	0x73C992FF, // bith male
	0xB2C9CBE0, // bith female
	0x30CFFED2, // gotal male
	0xDBA89F7C, // talz male
	0xB0960636, // abyssn male
	0xA2A87F6E, // arcona male
	0x62EAF6FB, // cerean male
	0xC6B705BA, // chadra fan female 
	0xF9504963, // chadra fan male 
	0x696718d6, // dug male
	0xA9BFEBF0, // duros male
	0xBE49D88E, // ewok female
	0x4B39AD7D, // ewok male
	0xD506AEA, // geonosion male
	0x60EDEA05, // feeorin male
	0x3A7F5790, // gungan male
	0xF9B11C30, // iktotchi male
	0x48B04347, // jenet male
	0x66DCE6EE, // kel dor male
	0x6BB072FA, // kubaz male
	0xE9CC7F2D, // mirialan female
	0xD7349684, // mirilan male
	0x65FBE4A7, // ortolan male
	0x3AE79C2B, // sanyassan female
	0x57A4EC3E, // sanyassan male
	0x5B779FE7, // zelton female
	0xE8975526, // zelton male
	0x3E751C09, // toydarian male
	0x8E3e2ae4, // JAWA

};

const static char* MoodStr[][2]= {
	{"none", "neutral"},
	{"absentminded", "neutral"},
	{"amazed", "neutral"},
	{"amused", "happy"},
	{"angry", "angry"},
	{"approving", "neutral"},
	{"bitter", "neutral"},
	{"bloodthirsty", "neutral"},
	{"brave", "neutral"},
	{"callous", "neutral"},
	{"careful", "neutral"},
	{"careless", "neutral"},
	{"casual", "neutral"},
	{"clinical", "neutral"},
	{"cocky", "neutral"},
	{"cold", "neutral"},
	{"compassionate", "neutral"},
	{"condescending", "neutral"},
	{"confident", "neutral"},
	{"confused", "neutral"},
	{"content", "happy"},
	{"courtly", "neutral"},
	{"coy", "neutral"},
	{"crude", "neutral"},
	{"cruel", "neutral"},
	{"curious", "neutral"},
	{"cynical", "neutral"},
	{"defensive", "neutral"},
	{"depressed", "unhappy"},
	{"devious", "neutral"},
	{"dimwitted", "neutral"},
	{"disappointed", "unhappy"},
	{"discreet", "neutral"},
	{"disgruntled", "disgruntled"},
	{"disgusted", "neutral"},
	{"dismayed", "unhappy"},
	{"disoriented", "neutral"},
	{"distracted", "neutral"},
	{"doubtful", "neutral"},
	{"dramatic", "neutral"},
	{"dreamy", "neutral"},
	{"drunk", "neutral"},
	{"earnest", "neutral"},
	{"ecstatic", "happy"},
	{"embarrassed", "neutral"},
	{"emphatic", "neutral"},
	{"encouraging", "neutral"},
	{"enthusiastic", "neutral"},
	{"evil", "neutral"},
	{"exasperated", "disgruntled"},
	{"exuberant", "happy"},
	{"fanatical", "neutral"},
	{ "forgive", "neutral"},
	{"frustrated", "neutral"},
	{"guilty", "neutral"},
	{"happy", "happy"},
	{"honest", "neutral"},
	{"hopeful", "neutral"},
	{"hopeless", "neutral"},
	{"humble", "neutral"},
	{"hysterical", "neutral"},
	{"imploring", "neutral"},
	{"indifferent", "neutral"},
	{"indignant", "angry"},
	{"interested", "neutral"},
	{"jealous", "neutral"},
	{"joyful", "happy"},
	{"lofty", "neutral"},
	{"loud", "neutral"},
	{"loving", "neutral"},
	{"lustful", "neutral"},
    {"mean", "neutral"},
    {"mischievous", "neutral"},
    {"nervous", "neutral"},
    {"neutral", "neutral"},
    {"offended", "neutral"},
    {"optimistic", "neutral"},
    {"pedantic", "neutral"},
    {"pessimistic", "neutral"},
    {"petulant", "neutral"},
    {"philosophical", "neutral"},
    {"pitying", "neutral"},
    {"playful", "happy"},
    {"polite", "neutral"},
    {"pompous", "neutral"},
    {"proud", "neutral"},
    {"provocative", "neutral"},
    {"puzzled", "neutral"},
    {"regretful", "unhappy"},
    {"relieved", "neutral"},
    {"reluctant", "neutral"},
    {"resigned", "neutral"},
    {"respectful", "neutral"},
    {"romantic", "neutral"},
    {"rude", "neutral"},
    {"sad", "unhappy"},
    {"sarcastic", "neutral"},
    {"scared", "neutral"},
    {"scolding", "neutral"},
    {"scornful", "neutral"},
    {"serious", "neutral"},
    {"shameless", "neutral"},
    {"shocked", "neutral"},
    {"shy", "neutral"},
    {"sincere", "neutral"},
    {"sleepy", "neutral"},
    {"sly", "neutral"},
    {"smug", "neutral"},
    {"snobby", "neutral"},
    {"sorry", "neutral"},
    {"spiteful", "neutral"},
    {"stubborn", "neutral"},
    {"sullen", "neutral"},
    {"suspicious", "neutral"},
    {"taunting", "neutral"},
    {"terrified", "neutral"},
    {"thankful", "neutral"},
    {"thoughtful", "neutral"},
    {"tolerant", "neutral"},
    {"uncertain", "neutral"},
    {"unhappy", "unhappy"},
    {"unwilling", "neutral"},
    {"warm", "neutral"},
    {"whiny", "neutral"},
    {"wicked", "neutral"},
    {"wistful", "neutral"},
    {"worried", "worried"},
    {"tired", "neutral"},
    {"exhausted", "neutral"},
    {"friendly", "happy"},
    {"timid", "neutral"},
    {"lazy", "neutral"},
    {"surprised", "worried"},
    {"innocent", "happy"},
    {"wise", "neutral"},
    {"youthful", "neutral"},
    {"adventurous", "neutral"},
    {"annoyed", "angry"},
    {"perturbed", "unhappy"},
    {"sedate", "neutral"},
    {"calm", "neutral"},
    {"suffering", "unhappy"},
    {"hungry", "neutral"},
    {"thirsty", "neutral"},
    {"alert", "neutral"},
    {"shifty", "neutral"},
    {"relaxed", "neutral"},
    {"crotchety", "angry"},
    {"surly", "angry"},
    {"painful", "unhappy"},
    {"wounded", "unhappy"},
    {"bubbly", "happy"},
    {"heroic", "neutral"},
    {"quiet", "neutral"},
    {"remorseful", "unhappy"},
    {"grumpy", "angry"},
    {"logical", "neutral"},
    {"emotional", "neutral"},
    {"troubled", "unhappy"},
    {"panicked", "worried"},
    {"nice", "happy"},
    {"cheerful", "happy"},
    {"emotionless", "neutral"},
    {"gloomy", "unhappy"},
    {"ambivalent", "neutral"},
    {"envious", "neutral"},
    {"vengeful", "angry"},
    {"fearful", "worried"},
    {"enraged", "angry"},
    {"sheepish", "happy"},
    {"belligerent", "angry"},
    {"obnoxious", "neutral"},
    {"fastidious", "neutral"},
    {"squeamish", "unhappy"},
    {"dainty", "neutral"},
    {"dignified", "neutral"},
    {"haughty", "neutral"},
    {"obscure", "neutral"},
    {"goofy", "happy"},
    {"silly", "happy"},
    {"disdainful", "neutral"},
    {"contemptuous", "neutral"},
    {"diplomatic", "neutral"},
    {"wary", "neutral"},
    {"malevolent", "angry"},
    {"hurried", "neutral"},
    {"patient", "neutral"},
    {"firm", "neutral"},
    {"meditating", "meditating"},
	{"entertained", "entertained"}

};

static unsigned int attributeLimits[41][19] = { //HAM	
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //human
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //trando
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //twilek
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //bothan
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //zabrak
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //rodian
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //moncal
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //wookie
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //salus
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, //itho
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500}, 
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},
		{2500, 3500,	2500, 3500,  	2500, 3500, 2500, 3500, 2500, 	3500, 2500, 3500,2500, 3500, 2500,	3500, 2500, 	3500, 25500},  
};

class Races {
public:
	inline const static char* getRace(int raceid) {
		if (raceid < 0 || raceid > 239)
			return "";

		return RaceStrs[raceid];
	}

	inline static int getSpeciesID(int raceid) {
		if (raceid < 0 || raceid > 239)
			return 0;

		return TemplateSpecies[raceid];
	}

	inline const static char* getMood(int moodid) {
		if (moodid < 0 || moodid > 239)
			return "";

		return MoodStr[moodid][0];
	}

	inline const static char* getSpecies(int raceid) {
		if (raceid < 0 || raceid > 239)
			return "";

		return Species[raceid];
	}

	inline const static char* getGender(int raceid) {
		if (raceid < 0 || raceid > 239)
			return "";

		return Gender[raceid];
	}

	inline static uint32 getRaceCRC(int raceid) {
		if (raceid < 0 || raceid > 239)
			return 0;

		return SharedRace[raceid];
	}

	inline static const char* getCompleteRace(uint32 sharedRaceCRC) {
		int race = -1;
		for (int i = 0; i < 240; ++i) {
			if (SharedRace[i] == sharedRaceCRC) {
				race = i;
				break;
			}
		}

		if (race == -1)
			return "";
		else
			return CCRaceStrs[race];
	}

	inline static int getRaceID(const String& name) {
    	for (int i = 0; i < 240; i++) {
        	if (strcmp(name.toCharArray(), CCRaceStrs[i]) == 0)
            	return i;
    	}

    	return 0;
	}

	inline static int getMoodID(const String& name) {
    	for (int i = 0; i < 190; i++) {
        	if (strcmp(name.toCharArray(), MoodStr[i][0]) == 0)
            	return i;
    	}

    	return 0;
	}

	inline const static char* getMoodStr(const String& name) {
		for (int i = 0; i < 190; i++) {
			if (strcmp(name.toCharArray(), MoodStr[i][0]) == 0)
				return MoodStr[i][1];
		}

		return MoodStr[0][1];
	}

	inline static unsigned int * getAttribLimits(int raceid) {
		return attributeLimits[raceid % 40];
	}

};

#endif /*RACES_H_*/
