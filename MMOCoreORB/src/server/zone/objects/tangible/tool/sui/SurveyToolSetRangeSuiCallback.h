/*
 * SurveyToolSetRangeSuiCallback.h
 *
 *  Created on: Nov 3, 2010
 *      Author: crush
 */

#ifndef SURVEYTOOLSETRANGECALLBACK_H_
#define SURVEYTOOLSETRANGECALLBACK_H_


#include "server/zone/objects/tangible/tool/SurveyTool.h"
#include "server/zone/objects/player/sui/SuiCallback.h"

class SurveyToolSetRangeSuiCallback : public SuiCallback {
public:
	SurveyToolSetRangeSuiCallback(ZoneServer* server)
		: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (cancelPressed)
			return;

		if (args->size() < 1)
			return;

		ManagedReference<SurveyTool*> surveyTool = cast<SurveyTool*>(suiBox->getUsingObject().get().get());

		if(surveyTool == nullptr)
			return;
		int range = 0;
		int incArg = Integer::valueOf(args->get(0).toString());

		if (incArg == 0) {
			range = 32;
		} else if (incArg == 1) {
			range = 64;
		} else if (incArg == 2) {
			range = 128;
		} else if (incArg == 3) {
			range = 256;
		} else if (incArg == 4) {
			range = 512;
		} else if (incArg == 5) {
			range = 1024;
		} else if (incArg == 6) {
			range = 2000;
		} else if (incArg == 7) {
			range = 5000;
		} else if (incArg == 8) {
			range = 10000;
		}
		//int range = 64 * Integer::valueOf(args->get(0).toString()) + 64;

		Locker _lock(surveyTool);
		surveyTool->setRange(range);
	}
};

#endif /* SURVEYTOOLSETRANGECALLBACK_H_ */
