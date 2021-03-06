#include "BatteryViewer.h"
#include "ScrollWindow.h"
#include "gestionnairebattery.h"
#include "QtDebug"

using namespace qge;

/// Creates a default InventoryViewer which visualizes the specified Inventory.
BatteryViewer::BatteryViewer(GestionnaireBattery *gestionnaire):
    border_(15),
    scrollWindow_(new ScrollWindow(70,100))
{
    // defaults
    height = 50;
    width = 80;


    this->setGuiPos(QPointF(0,610));
    scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_5-5.png"));

    connect(gestionnaire, &GestionnaireBattery::ChangerUI, this, &BatteryViewer::draw_);
}

QGraphicsItem *BatteryViewer::getGraphicsItem()
{
    return scrollWindow_->getGraphicsItem();
}


/// Sets the background of the InventoryViewer to the specified QPixmap.
/// @see InventoryViewer::setBackgroundColor(const QColor& color) for
/// more info.
void BatteryViewer::setBackgroundPixmap(const QPixmap &pixmap)
{
    scrollWindow_->setBackgroundPixmap(pixmap);
}


/// Returns the height of the InventoryViewer.
double BatteryViewer::getHeight()
{
    return height;
}

/// Returns the width of the InventoryViewer.
double BatteryViewer::getWidth()
{
    return width;
}

/// Draws the Inventory based on its current states.
void BatteryViewer::draw_(int state)
{

    switch (state) {
        case 0 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_0-5.png"));
        break;

        case 1 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_1-5.png"));
        break;

        case 2 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_2-5.png"));
        break;

        case 3 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_3-5.png"));
        break;

        case 4 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_4-5.png"));
        break;

        case 5 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/battery/battery_5-5.png"));
        break;
    }
}

