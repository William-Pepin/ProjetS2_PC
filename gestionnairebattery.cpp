#include "gestionnairebattery.h"
#include "QDebug"
#include "Global.h"

GestionnaireBattery::~GestionnaireBattery()
{

}

GestionnaireBattery::GestionnaireBattery(ItemBattery *batteries[10])
{

    // Le timer maximum que la batterie peut avoir
    batteryTimerMax=50*milliToSec;

    // Nombre Maximum d'état (dessin) différent que la batterie peut contenir
    batteryStateMax=5;
    batteryState = batteryStateMax;

    // Représente l'intervalle
    batteryInterval = batteryTimerMax/batteryStateMax;

    //Timer avant un changement d'affichage
    intervalTimer= new QTimer();
    intervalTimer-> start(batteryInterval);

    for (int i =0; i < 10; i++) {
        battery[i]= batteries[i];
        connect(battery[i], &ItemBattery::BatteryColision, this, &GestionnaireBattery::BatteryPrise);

    }

    connect(intervalTimer, &QTimer::timeout, this, &GestionnaireBattery::intervalResponse);
}

void GestionnaireBattery::BatteryPrise(int position)
{
    if(CONTROLLER->trig_right || interact)
    {
        ///Si bargraph déjà plein, reset seulement timers et énergie
        if (batteryState == batteryStateMax)
        {
          //intervalTimer->start(batteryInterval);
        }
        else //On change image (émet signal)
        {
           batteryState += 1;
           //intervalTimer->start(batteryInterval);
           emit ChangerUI(batteryState);
        }
        emit Flashdead(false);
    }

}


void GestionnaireBattery::add(ItemBattery *batteries)
{

}

QTimer* GestionnaireBattery::getIntervalTimer()
{
    return intervalTimer;
}

void GestionnaireBattery::intervalResponse()
{
    if (batteryState >1)
    batteryState -= 1;
    else
    {
        batteryState -= 1;

        intervalTimer->stop();
        emit Flashdead(true);
    }
    emit ChangerUI(batteryState);
}

int GestionnaireBattery::getBatteryState()
{
    return batteryState;
};
