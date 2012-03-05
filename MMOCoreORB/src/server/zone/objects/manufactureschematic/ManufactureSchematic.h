/*
 *	server/zone/objects/manufactureschematic/ManufactureSchematic.h generated by engine3 IDL compiler 0.60
 */

#ifndef MANUFACTURESCHEMATIC_H_
#define MANUFACTURESCHEMATIC_H_

#include "engine/core/Core.h"

#include "engine/core/ManagedReference.h"

#include "engine/core/ManagedWeakReference.h"

namespace server {
namespace zone {
namespace packets {
namespace scene {

class AttributeListMessage;

} // namespace scene
} // namespace packets
} // namespace zone
} // namespace server

using namespace server::zone::packets::scene;

namespace server {
namespace zone {
namespace objects {
namespace draftschematic {

class DraftSchematic;

} // namespace draftschematic
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::draftschematic;

namespace server {
namespace zone {
namespace objects {
namespace scene {

class SceneObject;

} // namespace scene
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::scene;

namespace server {
namespace zone {
namespace objects {
namespace tangible {

class TangibleObject;

} // namespace tangible
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::tangible;

namespace server {
namespace zone {
namespace objects {
namespace area {

class ActiveArea;

} // namespace area
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::area;

#include "server/zone/objects/creature/CreatureObject.h"

#include "server/zone/objects/scene/variables/DeltaVector.h"

#include "server/zone/packets/object/ObjectControllerMessage.h"

#include "server/zone/objects/manufactureschematic/ingredientslots/IngredientSlot.h"

#include "server/zone/objects/manufactureschematic/craftingvalues/CraftingValues.h"

#include "server/zone/objects/manufactureschematic/factoryblueprint/FactoryBlueprint.h"

#include "server/zone/objects/manufactureschematic/factoryblueprint/BlueprintEntry.h"

#include "server/zone/objects/scene/variables/ContainerPermissions.h"

#include "server/zone/objects/manufactureschematic/variables/StringIdDeltaVector.h"

#include "server/zone/objects/manufactureschematic/variables/Uint64VectorDeltaVector.h"

#include "server/zone/objects/manufactureschematic/variables/IntVectorDeltaVector.h"

#include "server/zone/packets/DeltaMessage.h"

#include "system/lang/ref/Reference.h"

#include "engine/service/proto/BaseMessage.h"

#include "system/util/Vector.h"

#include "server/zone/objects/intangible/IntangibleObject.h"

namespace server {
namespace zone {
namespace objects {
namespace manufactureschematic {

class ManufactureSchematic : public IntangibleObject {
public:
	ManufactureSchematic();

	void initializeTransientMembers();

	void fillAttributeList(AttributeListMessage* msg, CreatureObject* object);

	void sendTo(SceneObject* player, bool doClose);

	void sendBaselinesTo(SceneObject* player);

	void synchronizedUIListen(SceneObject* player, int value);

	void synchronizedUIStopListen(SceneObject* player, int value);

	bool isManufactureSchematic();

	void setDraftSchematic(DraftSchematic* schematic);

	int addIngredientToSlot(CreatureObject* player, TangibleObject* tano, int slot);

	int removeIngredientFromSlot(CreatureObject* player, TangibleObject* tano, int slot);

	void cleanupIngredientSlots(CreatureObject* player);

	DraftSchematic* getDraftSchematic();

	void increaseComplexity();

	void decreaseComplexity();

	float getComplexity();

	bool isReadyForAssembly();

	void setAssembled();

	bool isAssembled();

	void setCompleted();

	bool isCompleted();

	int getSlotCount();

	IngredientSlot* getSlot(int i);

	void setCrafter(CreatureObject* player);

	CreatureObject* getCrafter();

	CraftingValues* getCraftingValues();

	void setExperimentingCounter(int value);

	int getExperimentingCounter();

	int getExperimentingCounterPrevious();

	int getIngredientCounter();

	void setManufactureLimit(int limit);

	int getManufactureLimit();

	void setPrototype(TangibleObject* tano);

	TangibleObject* getPrototype();

	void canManufactureItem(String& type, String& displayedName);

	void manufactureItem();

	void createFactoryBlueprint();

	int getBlueprintSize();

	BlueprintEntry* getBlueprintEntry(int i);

	DistributedObjectServant* _getImplementation();

	void _setImplementation(DistributedObjectServant* servant);

protected:
	ManufactureSchematic(DummyConstructorParameter* param);

	virtual ~ManufactureSchematic();

	friend class ManufactureSchematicHelper;
};

} // namespace manufactureschematic
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::manufactureschematic;

namespace server {
namespace zone {
namespace objects {
namespace manufactureschematic {

class ManufactureSchematicImplementation : public IntangibleObjectImplementation {
protected:
	ManagedReference<DraftSchematic* > draftSchematic;

	ManagedReference<TangibleObject* > prototype;

	float dataSize;

	int manufactureLimit;

	float complexity;

	ManagedReference<CreatureObject* > crafter;

	FactoryBlueprint factoryBlueprint;

	Vector<Reference<IngredientSlot*> > ingredientSlots;

	StringIdDeltaVector ingredientNames;

	DeltaVector<int> ingredientTypes;

	Uint64VectorDeltaVector slotOIDs;

	IntVectorDeltaVector slotQuantities;

	DeltaVector<float> slotQualities;

	DeltaVector<int> slotClean;

	DeltaVector<int> slotIndexes;

	bool assembled;

	bool completed;

	int ingredientCounter;

	int experimentingCounter;

	int experimentingCounterPrevious;

	bool possibleSyncIssue;

	Reference<CraftingValues* > craftingValues;

	Vector<byte> customizationOptions;

	Vector<byte> customizationDefaultValues;

public:
	ManufactureSchematicImplementation();

	ManufactureSchematicImplementation(DummyConstructorParameter* param);

	void initializeTransientMembers();

	void fillAttributeList(AttributeListMessage* msg, CreatureObject* object);

	virtual void sendTo(SceneObject* player, bool doClose);

	void sendBaselinesTo(SceneObject* player);

private:
	void sendMsco7(SceneObject* player);

public:
	virtual void synchronizedUIListen(SceneObject* player, int value);

	virtual void synchronizedUIStopListen(SceneObject* player, int value);

	bool isManufactureSchematic();

	void setDraftSchematic(DraftSchematic* schematic);

private:
	void initializeIngredientSlots();

public:
	int addIngredientToSlot(CreatureObject* player, TangibleObject* tano, int slot);

	int removeIngredientFromSlot(CreatureObject* player, TangibleObject* tano, int slot);

private:
	void sendDelta7(IngredientSlot* ingredientSlot, int slot, CreatureObject* player);

public:
	void cleanupIngredientSlots(CreatureObject* player);

	DraftSchematic* getDraftSchematic();

	void increaseComplexity();

	void decreaseComplexity();

	float getComplexity();

	bool isReadyForAssembly();

	void setAssembled();

	bool isAssembled();

	void setCompleted();

	bool isCompleted();

	int getSlotCount();

	IngredientSlot* getSlot(int i);

	void setCrafter(CreatureObject* player);

	CreatureObject* getCrafter();

	CraftingValues* getCraftingValues();

	void setExperimentingCounter(int value);

	int getExperimentingCounter();

	int getExperimentingCounterPrevious();

private:
	void updateIngredientCounter();

public:
	int getIngredientCounter();

	void setManufactureLimit(int limit);

	int getManufactureLimit();

	void setPrototype(TangibleObject* tano);

	TangibleObject* getPrototype();

	void canManufactureItem(String& type, String& displayedName);

	void manufactureItem();

	void createFactoryBlueprint();

	int getBlueprintSize();

	BlueprintEntry* getBlueprintEntry(int i);

	WeakReference<ManufactureSchematic*> _this;

	operator const ManufactureSchematic*();

	DistributedObjectStub* _getStub();
	virtual void readObject(ObjectInputStream* stream);
	virtual void writeObject(ObjectOutputStream* stream);
protected:
	virtual ~ManufactureSchematicImplementation();

	void finalize();

	void _initializeImplementation();

	void _setStub(DistributedObjectStub* stub);

	void lock(bool doLock = true);

	void lock(ManagedObject* obj);

	void rlock(bool doLock = true);

	void wlock(bool doLock = true);

	void wlock(ManagedObject* obj);

	void unlock(bool doLock = true);

	void runlock(bool doLock = true);

	void _serializationHelperMethod();
	bool readObjectMember(ObjectInputStream* stream, const String& name);
	int writeObjectMembers(ObjectOutputStream* stream);

	friend class ManufactureSchematic;
};

class ManufactureSchematicAdapter : public IntangibleObjectAdapter {
public:
	ManufactureSchematicAdapter(ManufactureSchematic* impl);

	Packet* invokeMethod(sys::uint32 methid, DistributedMethod* method);

	void initializeTransientMembers();

	void sendTo(SceneObject* player, bool doClose);

	void sendBaselinesTo(SceneObject* player);

	void synchronizedUIListen(SceneObject* player, int value);

	void synchronizedUIStopListen(SceneObject* player, int value);

	bool isManufactureSchematic();

	void setDraftSchematic(DraftSchematic* schematic);

	int addIngredientToSlot(CreatureObject* player, TangibleObject* tano, int slot);

	int removeIngredientFromSlot(CreatureObject* player, TangibleObject* tano, int slot);

	void cleanupIngredientSlots(CreatureObject* player);

	DraftSchematic* getDraftSchematic();

	void increaseComplexity();

	void decreaseComplexity();

	float getComplexity();

	bool isReadyForAssembly();

	void setAssembled();

	bool isAssembled();

	void setCompleted();

	bool isCompleted();

	int getSlotCount();

	void setCrafter(CreatureObject* player);

	CreatureObject* getCrafter();

	void setExperimentingCounter(int value);

	int getExperimentingCounter();

	int getExperimentingCounterPrevious();

	int getIngredientCounter();

	void setManufactureLimit(int limit);

	int getManufactureLimit();

	void setPrototype(TangibleObject* tano);

	TangibleObject* getPrototype();

	void canManufactureItem(String& type, String& displayedName);

	void manufactureItem();

	void createFactoryBlueprint();

	int getBlueprintSize();

protected:
	String _param0_canManufactureItem__String_String_;
	String _param1_canManufactureItem__String_String_;
};

class ManufactureSchematicHelper : public DistributedObjectClassHelper, public Singleton<ManufactureSchematicHelper> {
	static ManufactureSchematicHelper* staticInitializer;

public:
	ManufactureSchematicHelper();

	void finalizeHelper();

	DistributedObject* instantiateObject();

	DistributedObjectServant* instantiateServant();

	DistributedObjectAdapter* createAdapter(DistributedObjectStub* obj);

	friend class Singleton<ManufactureSchematicHelper>;
};

} // namespace manufactureschematic
} // namespace objects
} // namespace zone
} // namespace server

using namespace server::zone::objects::manufactureschematic;

#endif /*MANUFACTURESCHEMATIC_H_*/
