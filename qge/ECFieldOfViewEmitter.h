#pragma once

#include "Vendor.h"

#include "EntityController.h"
#include "Entity.h"

class QTimer;

namespace qge{

/// An entity controller that checks the field of view of
/// the controlled entity and emits a signal whenever other entities enter or leave the
/// controlled entity's field of view.
///
/// You can also use entitiesInView() to get
/// all the current entities in the controlled entity's field of view.
///
/// Example usage:
/// ==============
/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.cpp
/// ECFieldOfViewEmitter* c = new ECFieldOfViewEmitter(entity);
/// connect(c,&ECFieldOfViewEmitter::entityEntersFOV,this,myCallback);
/// connect(c,&ECFieldOfViewEmitter::entityLeavesFOV,this,myCallback);
/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// @author Abdullah Aghazadah
/// @date 11/23/16
class ECFieldOfViewEmitter: public EntityController
{
    Q_OBJECT
public:
    ECFieldOfViewEmitter(Entity* entity, double fovAngle=100, double fovDistance=800);
    ~ECFieldOfViewEmitter();

    std::unordered_set<Entity*> entitiesInView();

    void setCheckFrequency(double timesPerSecond);
    double checkFrequency() const;

    void turnOn();
    void turnOff();

    void setShowFOV(bool tf);

public slots:
    void checkFov_();
signals:
    /// Emitted whenever an entity enters the field of view of the entity
    /// controlled.
    void entityEntersFOV(Entity* entity);

    /// Emitted whenever an entity leaves the field of view of the entity
    /// controlled.
    void entityLeavesFOV(Entity* entity);
private:
    double fieldOfViewAngle_;
    double fieldOfViewDistance_;
    double fieldOfViewCheckDelayMs_; // in ms
    QTimer* timerCheckFov_;

    bool showFOV_;
    QGraphicsPolygonItem* fovVisual_;

    // helper
    std::unordered_set<Entity*> entitiesInViewLastTime_;

    // helper functions
    void ensureFOVVisualIsRemoved_();
};

}
