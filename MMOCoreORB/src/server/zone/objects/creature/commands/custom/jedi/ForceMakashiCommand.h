/*
				Copyright R. Bassett Jr.

				ALL CREDITS GO TO THE ORIGINAL AUTHOR ABOVE - ADAPTED FOR WARFRONT SERVER USE

				See file COPYING for copying conditions.*/

#ifndef FORCEMAKASHICOMMAND
#define FORCEMAKASHICOMMAND

#include "server/zone/objects/scene/SceneObject.h"

class ForceMakashiCommand : public JediQueueCommand {
public:

	ForceMakashiCommand(const String& name, ZoneProcessServer* server) : JediQueueCommand(name, server) {
		buffCRC = BuffCRC::JEDI_FORCE_MAKASHI;
		skillMods.put("force_makashi", 1);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}
};
#endif //FORCEMAKASHICOMMAND