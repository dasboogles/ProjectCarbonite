/*
				Copyright R. Bassett Jr.

				ALL CREDITS GO TO THE ORIGINAL AUTHOR ABOVE - ADAPTED FOR WARFRONT SERVER USE

				See file COPYING for copying conditions.*/

#ifndef FORCESORESUCOMMAND
#define FORCESORESUCOMMAND

#include "server/zone/objects/scene/SceneObject.h"

class ForceSoresuCommand : public JediQueueCommand {
public:

	ForceSoresuCommand(const String& name, ZoneProcessServer* server) : JediQueueCommand(name, server) {
		buffCRC = BuffCRC::JEDI_FORCE_SORESU;
		skillMods.put("force_soresu", 1);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}
};
#endif //FORCESORESUCOMMAND