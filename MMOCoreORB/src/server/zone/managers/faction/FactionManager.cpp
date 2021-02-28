/*
 * FactionManager.cpp
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#include "FactionManager.h"
#include "FactionMap.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "templates/manager/TemplateManager.h"
#include "server/ServerCore.h"
#include "server/db/ServerDatabase.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/chat/room/ChatRoom.h"
#include "server/zone/packets/chat/ChatRoomMessage.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "templates/faction/Factions.h"



FactionManager::FactionManager() {
	setLoggingName("FactionManager");
	setGlobalLogging(false);
	setLogging(false);
}

void FactionManager::loadData() {
	loadLuaConfig();
	loadFactionRanks();
}

void FactionManager::loadFactionRanks() {
	IffStream* iffStream = TemplateManager::instance()->openIffFile("datatables/faction/rank.iff");

	if (iffStream == nullptr) {
		warning("Faction ranks could not be found.");
		return;
	}

	DataTableIff dtiff;
	dtiff.readObject(iffStream);

	factionRanks.readObject(&dtiff);

	delete iffStream;

	info("loaded " + String::valueOf(factionRanks.getCount()) + " ranks", true);
}

void FactionManager::loadLuaConfig() {
	info("Loading config file.", true);

	FactionMap* fMap = getFactionMap();

	Lua* lua = new Lua();
	lua->init();

	//Load the faction manager lua file.
	lua->runFile("scripts/managers/faction_manager.lua");

	LuaObject luaObject = lua->getGlobalObject("factionList");

	if (luaObject.isValidTable()) {
		for (int i = 1; i <= luaObject.getTableSize(); ++i) {
			LuaObject factionData = luaObject.getObjectAt(i);

			if (factionData.isValidTable()) {
				String factionName = factionData.getStringAt(1);
				bool playerAllowed = factionData.getBooleanAt(2);
				String enemies = factionData.getStringAt(3);
				String allies = factionData.getStringAt(4);
				float adjustFactor = factionData.getFloatAt(5);

				Faction faction(factionName);
				faction.setAdjustFactor(adjustFactor);
				faction.setPlayerAllowed(playerAllowed);
				faction.parseEnemiesFromList(enemies);
				faction.parseAlliesFromList(allies);

				fMap->addFaction(faction);
			}

			factionData.pop();
		}
	}

	luaObject.pop();

	delete lua;
	lua = nullptr;
}

void FactionManager::createGcwRooms(ChatManager* chatManager) {
	ManagedReference<ChatRoom*> pvpRoom = chatManager->getPvpRoom();

	// Imperial
	imperialChat = chatManager->createRoom("Imperial", pvpRoom);
	imperialChat->setPrivate();
	imperialChat->setTitle("Imperial Chat");
	imperialChat->setCanEnter(true);
	imperialChat->setChatRoomType(ChatRoom::PVP);

	// Rebel
	rebelChat = chatManager->createRoom("Rebel", pvpRoom);
	rebelChat->setPrivate();
	rebelChat->setTitle("Rebel Chat");
	rebelChat->setCanEnter(true);
	rebelChat->setChatRoomType(ChatRoom::PVP);

	// Kills
	pvpNotificationChat = chatManager->createRoom("Notifications", pvpRoom);
	pvpNotificationChat->setPrivate();
	pvpNotificationChat->setTitle("Notifications");
	pvpNotificationChat->setCanEnter(true);
	pvpNotificationChat->setChatRoomType(ChatRoom::PVP);
	pvpNotificationChat->setModerated(true);
}

FactionMap* FactionManager::getFactionMap() {
	return &factionMap;
}

void FactionManager::awardFactionStanding(CreatureObject* player, const String& factionName, int level) {
	if (player == nullptr)
		return;

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (!factionMap.contains(factionName))
		return;

	const Faction& faction = factionMap.get(factionName);
	const SortedVector<String>* enemies = faction.getEnemies();
	const SortedVector<String>* allies = faction.getAllies();

	if (!faction.isPlayerAllowed())
		return;

	float gain = level * faction.getAdjustFactor();
	float lose = gain * 2;

	ghost->decreaseFactionStanding(factionName, lose);

	//Lose faction standing to allies of the creature.
	for (int i = 0; i < allies->size(); ++i) {
		const String& ally = allies->get(i);

		if ((ally == "rebel" || ally == "imperial")) {
			continue;
		}

		if (!factionMap.contains(ally))
			continue;

		const Faction& allyFaction = factionMap.get(ally);

		if (!allyFaction.isPlayerAllowed())
			continue;

		ghost->decreaseFactionStanding(ally, lose);
	}

	bool gcw = false;
	if (factionName == "rebel" || factionName == "imperial") {
		gcw = true;
	}

	//Gain faction standing to enemies of the creature.
	for (int i = 0; i < enemies->size(); ++i) {
		const String& enemy = enemies->get(i);

		if ((enemy == "rebel" || enemy == "imperial") && !gcw) {
			continue;
		}

		if (!factionMap.contains(enemy))
			continue;

		const Faction& enemyFaction = factionMap.get(enemy);

		if (!enemyFaction.isPlayerAllowed())
			continue;

		ghost->increaseFactionStanding(enemy, gain);
	}
}


void FactionManager::awardPvpFactionPoints(TangibleObject* killer, CreatureObject* destructedObject) {
	if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
		CreatureObject* killerCreature = cast<CreatureObject*>(killer);
		

		if (killerCreature == destructedObject)
			return; // If killer is target: Prevent Fight club warning on self/enviroment kills

		ManagedReference<PlayerObject*> ghost = killerCreature->getPlayerObject();
		ManagedReference<GroupObject*> group;		
		ManagedReference<PlayerObject*> killedGhost = destructedObject->getPlayerObject();
		ManagedReference<PlayerManager*> playerManager = killerCreature->getZoneServer()->getPlayerManager();

		// Broadcast to Server
		String playerName = getFactionHex(destructedObject) + destructedObject->getFirstName();
		
		String killerNames = getFactionHex(killerCreature) + killerCreature->getFirstName();
		bool isFightClubbing = false;

		if (Zone* zone = ghost->getZone()) {
			// Fight Clubbing
			const String fightClubMessage = " \\#f0f497[GCW] \\#ff982bFight Clubbing \\#ffffffis not tolerated. You will be penalized.";
			
			// Check for FightClubbing
			if (ghost->getAccountID() == killedGhost->getAccountID()) {
				isFightClubbing = true;
			}
			

			// Check for solo FightClubbing
			if (isFightClubbing) {
				killerCreature->sendSystemMessage(fightClubMessage);

				UnicodeString message = " " + killerNames + " \\#ffffffwas detected trying to \\#ff982bFight Club\\#ffffff.";
				BaseMessage* msg = new ChatRoomMessage(" \\#f0f497[GCW] ", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
				pvpNotificationChat->broadcastMessage(msg);
			}

			//Grouped Fight clubbing
			// only check members in Xp range of 128m		
			const float Range = 128.0f;		
			int groupMembersInRange = 1; // includes the original killer

			// iterate group 
			if (killerCreature->isGrouped()) {
				ManagedReference<GroupObject*> group = killerCreature->getGroup();
				int groupSize = group->getGroupSize();

				// iterate over the group members
				for (int i = 0; i < groupSize; i++) {
					ManagedReference<CreatureObject*> groupMember = group->getGroupMember(i);

					// skip the killer passed in
					if (killerCreature->getObjectID() == groupMember->getObjectID()) {
						continue;
					}

					// if the group member is in range...
					if (killerCreature->isInRange(groupMember, Range)) {
						CreatureObject* groupMemberCreature = dynamic_cast<CreatureObject*>(groupMember.get());

						if (groupMemberCreature == nullptr)
							continue;

						killerNames += " " + getFactionHex(groupMemberCreature) + groupMemberCreature->getFirstName();

						if (!groupMemberCreature->isPlayerCreature()) {
							continue;
						}

						// if the group member is in range...
						if (killerCreature->isInRange(groupMember, Range)) {
							// increment group counter
							groupMembersInRange++;
							ManagedReference<PlayerObject*> groupMemberGhost = groupMemberCreature->getPlayerObject();

							// Check for fightclubbing
							if (groupMemberGhost->getAccountID() == killedGhost->getAccountID()) {
								isFightClubbing = true;
							}
							
							if (isFightClubbing) {
								killerCreature->sendSystemMessage(fightClubMessage);

								UnicodeString message = " " + getFactionHex(groupMemberCreature) + groupMemberCreature->getFirstName() + "\\#ffffff penalized for \\#ff982bFight Clubbing\\#ffffff.";
								BaseMessage* msg = new ChatRoomMessage(" \\#f0f497[GCW] ", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
								pvpNotificationChat->broadcastMessage(msg);
							}
						}		
					}
				}
			}

			// So long as we were not fight-clubbing then...
			if (!isFightClubbing) {
				// All kills
				killer->playEffect("clienteffect/holoemote_rebel.cef", "head");
				PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_themequest_victory_imperial.snd");
				killer->sendMessage(pmm);

				UnicodeString message;
				// GCW player versus player messages, FRS will now cost GCW instead of FRS as well
				if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
					message = " " + playerName + " \\#ffffffhas been killed by " + killerNames;
					BaseMessage* msg = new ChatRoomMessage(" \\#f0f497[GCW] ", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
					pvpNotificationChat->broadcastMessage(msg);
				}
			
				// Group kill split GCW	
				group = killerCreature->getGroup();
				Vector<ManagedReference<CreatureObject*> > players;
				int playerCount = 1;

				int killerRating = ghost->getPvpRating();
				int playerRating = killedGhost->getPvpRating();
				if (group != nullptr){
					playerCount = group->getNumberOfPlayerMembers();
					for (int x=0; x < group->getGroupSize(); x++){
						Reference<CreatureObject*> groupMember = group->getGroupMember(x);
						if (groupMember->isPlayerCreature() && groupMember->isInRange(killerCreature, 128.0f) && (groupMember->getPlayerObject()->hasPvpTef() || groupMember->getFactionStatus() == FactionStatus::OVERT)) {
							players.add(groupMember);
						}
					}
				} else {
					// If our group doesn't exist then at LEAST add the killer
					players.add(killerCreature);
				}

				// Paranoid Check, Making sure that at LEAST the killer is credited
				if (players.size() == 0) {
					players.add(killerCreature);
				}

				// If missing some of the killers then warn but do nothing about it.... ;)
				if (playerCount > players.size()) {
					killerCreature->sendSystemMessage(" \\#f0f497[GCW] \\#ffffffSome players were too far away from the kill!"); // Alert! Some group members are too far away from the group to receive their reward and and are not eligible for reward.
				}

				// Total solo-kill value is 600
				// Server Global Multiplier affects this! (150 x 4 == 600)
				int dividedKill = 150 / players.size();// Award gcw xp for group 
				
				if (players.size() == 1) {
					dividedKill = 150;// Award gcw xp for solo kill
				}

				// Don't grant less than 4x20 (80) per person
				if (dividedKill < 20) {
					dividedKill = 20;
				}

				// Loop through Player array so we can apply rewards
				for (int i = 0; i < players.size(); i++) {
					bool victimKilledRecently = false;
					int valToAward = dividedKill;
					ManagedReference<CreatureObject*> player = players.get(i);
					if (player != nullptr) {

						// Grab our playerObject so we can do victimList checks
						ManagedReference<PlayerObject*> playerGhost = player->getPlayerObject();

						if (playerGhost != nullptr) {
							ManagedReference<PlayerManager*> groupPlayerManager = player->getZoneServer()->getPlayerManager();
							if (groupPlayerManager != nullptr) {	

								// If Killer recently killed Victim then only provide 10% of overall exp
								if (playerGhost->hasOnVictimList(destructedObject->getObjectID())) {
									// Apply modifier if has been recently killed
									valToAward = valToAward * 0.1f;
									victimKilledRecently = true;
									player->sendSystemMessage("You've had a hand in killing your target recently and is not worth much experience.");
								}

								// Apply experience
								groupPlayerManager->awardExperience(player, "gcw_skill_xp", valToAward);

								// Notify of GCW to the killer/assister
								StringBuffer sysMessage;
								sysMessage << " \\#f0f497[GCW] \\#ffffffYou have received \\#41f4d9" << valToAward << " GCW XP\\#ffffff for your kill participation!";
								
								// If Assisting a kill
								if (playerGhost->getObjectID() != ghost->getObjectID()) {
									// Do Database Saves here for Assists
									saveGCWAssist(killedGhost, playerGhost);		
								}
								// If is the Killer landing the DeathBlow 
								else if (playerGhost->getObjectID() == ghost->getObjectID()) {
									// Do Database Saves here for Player that Deathblowed
									saveGCWKill(killedGhost, playerGhost);
								}

								// Add to victims list if not already there
								if (!victimKilledRecently) {
									playerGhost->addToVictimList(destructedObject->getObjectID());
								}
							}
						}
					}
				}
			}
		}

		// So long as we were not fight-clubbing then...
		if (!isFightClubbing) {

			

			// Faction gain
			if (killer->isRebel() && destructedObject->isImperial()) {
				ghost->increaseFactionStanding("rebel", 130);
				ghost->decreaseFactionStanding("imperial", 145);
			} else if (killer->isImperial() && destructedObject->isRebel()) {
				ghost->increaseFactionStanding("imperial", 130);
				ghost->decreaseFactionStanding("rebel", 145);
			}
		}
	}
}

// Save any Kills to the DB (Killer + Victim)
void FactionManager::saveGCWKill(PlayerObject* victim, PlayerObject* killer) {
	// Make sure our PlayerObjects aren't null coming in!
	if (victim == nullptr) {
		error("[GCW-ERR]: Victim was NULL and could not save a GCW kill!");
		return;
	}

	if (killer == nullptr) {
		error("[GCW-ERR]: Killer was NULL and could not save a GCW kill!");
		return;
	}

	// Get Victim and Killer CreatureObjects
	ManagedReference<CreatureObject*> victimCreo = dynamic_cast<CreatureObject*>(victim->getParent().get().get());
	ManagedReference<CreatureObject*> killerCreo = dynamic_cast<CreatureObject*>(killer->getParent().get().get());

	// Make sure Creos are not null!
	if (victimCreo == nullptr) {
		error("[GCW-ERR]: VictimCreo was NULL and could not save a GCW kill!");
		return;
	}

	if (killerCreo == nullptr) {
		error("[GCW-ERR]: KillerCreo was NULL and could not save a GCW kill!");
		return;
	}

	// Get Clients for Victim and Killer
	auto victimClient = victimCreo->getClient();
	auto killerClient = killerCreo->getClient();
	if (victimClient == nullptr) {
		error("[GCW-ERR]: VictimClient was NULL and could not save a GCW kill!");
		return;
	}

	if (killerClient == nullptr) {
		error("[GCW-ERR]: KillerClient was NULL and could not save a GCW kill!");
		return;
	}

	// Make sure the current SchemaVersion is correct
	if (ServerCore::getSchemaVersion() >= 1004) {
		StringBuffer query;
		String victimFactionString = "Unknown";
		String killerFactionString = "Unknown";

		// Set Faction to a String instead of giant unknown ints
		if (victimCreo->getFaction() == Factions::FACTIONIMPERIAL) {
			victimFactionString = "Imperial";
		} else if (victimCreo->getFaction() == Factions::FACTIONREBEL) {
			victimFactionString = "Rebel";
		} else {
			victimFactionString = "Neutral";
		}

		// Set Faction to a String instead of giant unknown ints
		if (killerCreo->getFaction() == Factions::FACTIONIMPERIAL) {
			killerFactionString = "Imperial";
		} else if (killerCreo->getFaction() == Factions::FACTIONREBEL) {
			killerFactionString = "Rebel";
		} else {
			killerFactionString = "Neutral";
		}

		query << "INSERT INTO `gcw_kill_records` ("
			<< "`victim_account_id`, `killer_account_id`, `victim_firstname`, `killer_firstname`, `victim_pvp_rating`, `killer_pvp_rating`"
			<< ", `victim_faction`, `killer_faction`, `victim_ip`, `killer_ip`"
			<< ") VALUES"
			<< " (" << victim->getAccountID()
			<< ", " << killer->getAccountID()
			<< ", '" << victimCreo->getFirstName() << "'"
			<< ", '" << killerCreo->getFirstName() << "'"
			<< ", " << victim->getPvpRating()
			<< ", " << killer->getPvpRating()
			<< ", '" << victimFactionString << "'"
			<< ", '" << killerFactionString << "'"
			<< ", '" << victimClient->getIPAddress() << "'"
			<< ", '" << killerClient->getIPAddress() << "'"
			<< ");"
			;

		Core::getTaskManager()->executeTask([=] () {
			try {
				ServerDatabase::instance()->executeStatement(query);
			} catch(DatabaseException& e) {
				error(e.getMessage());
			}
		}, "logGCWKill");
	}
}

// Save any Assists to the DB (Assister + Victim)
void FactionManager::saveGCWAssist(PlayerObject* victim, PlayerObject* killer) {
	// Make sure our PlayerObjects aren't null coming in!
	if (victim == nullptr) {
		error("[GCW-ERR]: Victim was NULL and could not save a GCW kill!");
		return;
	}

	if (killer == nullptr) {
		error("[GCW-ERR]: Assister was NULL and could not save a GCW kill!");
		return;
	}

	// Get Victim and Assister CreatureObjects
	ManagedReference<CreatureObject*> victimCreo = dynamic_cast<CreatureObject*>(victim->getParent().get().get());
	ManagedReference<CreatureObject*> killerCreo = dynamic_cast<CreatureObject*>(killer->getParent().get().get());

	// Make sure Creos are not null!
	if (victimCreo == nullptr) {
		error("[GCW-ERR]: VictimCreo was NULL and could not save a GCW kill!");
		return;
	}

	if (killerCreo == nullptr) {
		error("[GCW-ERR]: AssisterCreo was NULL and could not save a GCW kill!");
		return;
	}

	// Get Clients for Victim and Killer
	auto victimClient = victimCreo->getClient();
	auto killerClient = killerCreo->getClient();
	if (victimClient == nullptr) {
		error("[GCW-ERR]: VictimClient was NULL and could not save a GCW kill!");
		return;
	}

	if (killerClient == nullptr) {
		error("[GCW-ERR]: AssisterClient was NULL and could not save a GCW kill!");
		return;
	}

	// Make sure the current SchemaVersion is correct
	if (ServerCore::getSchemaVersion() >= 1004) {
		StringBuffer query;
		String victimFactionString = "Unknown";
		String killerFactionString = "Unknown";

		// Set Faction to a String instead of giant unknown ints
		if (victimCreo->getFaction() == Factions::FACTIONIMPERIAL) {
			victimFactionString = "Imperial";
		} else if (victimCreo->getFaction() == Factions::FACTIONREBEL) {
			victimFactionString = "Rebel";
		} else {
			victimFactionString = "Neutral";
		}

		// Set Faction to a String instead of giant unknown ints
		if (killerCreo->getFaction() == Factions::FACTIONIMPERIAL) {
			killerFactionString = "Imperial";
		} else if (killerCreo->getFaction() == Factions::FACTIONREBEL) {
			killerFactionString = "Rebel";
		} else {
			killerFactionString = "Neutral";
		}

		query << "INSERT INTO `gcw_assist_records` ("
			<< "`victim_account_id`, `assister_account_id`, `victim_firstname`, `assister_firstname`, `victim_pvp_rating`, `assister_pvp_rating`"
			<< ", `victim_faction`, `assister_faction`, `victim_ip`, `assister_ip`"
			<< ") VALUES"
			<< " (" << victim->getAccountID()
			<< ", " << killer->getAccountID()
			<< ", '" << victimCreo->getFirstName() << "'"
			<< ", '" << killerCreo->getFirstName() << "'"
			<< ", " << victim->getPvpRating()
			<< ", " << killer->getPvpRating()
			<< ", '" << victimFactionString << "'"
			<< ", '" << killerFactionString << "'"
			<< ", '" << victimClient->getIPAddress() << "'"
			<< ", '" << killerClient->getIPAddress() << "'"
			<< ");"
			;

		Core::getTaskManager()->executeTask([=] () {
			try {
				ServerDatabase::instance()->executeStatement(query);
			} catch(DatabaseException& e) {
				error(e.getMessage());
			}
		}, "logGCWKill");
	}
}

String FactionManager::getFactionHex(CreatureObject* creature) { // Added by Tyclo -- Get hexidecimal colors based on faction for messages
	if (creature->isRebel())
		return "\\#EF5350";
	else if (creature->isImperial())
		return "\\#29B6F6";
	else
		return "\\#beeeef"; // Neutral
}

String FactionManager::getFactionColorName(CreatureObject* creature) { // Added by Tyclo -- Get hexidecimal colors based on faction for messages
	if (creature->isRebel())
		return "\\#EF5350Rebel";
	else if (creature->isImperial())
		return "\\#29B6F6Imperial";
	else
		return "\\#beeeefCivilian"; // Neutral
}

String FactionManager::getRankName(int idx) {
	if (idx >= factionRanks.getCount())
		return "";

	return factionRanks.getRank(idx).getName();
}

int FactionManager::getRankCost(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getCost();
}

int FactionManager::getRankDelegateRatioFrom(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioFrom();
}

int FactionManager::getRankDelegateRatioTo(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioTo();
}

int FactionManager::getFactionPointsCap(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return Math::max(1000, getRankCost(rank) * 20);
}

bool FactionManager::isFaction(const String& faction) {
	if (factionMap.contains(faction))
		return true;

	return false;
}

bool FactionManager::isEnemy(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getEnemies()->contains(faction2);
}

bool FactionManager::isAlly(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getAllies()->contains(faction2);
}
