#include "HPViewer.h"
#include "ScrollWindow.h"

using namespace qge;

/// Creates a default InventoryViewer which visualizes the specified Inventory.
HPViewer::HPViewer(Entity *player):
    border_(15),
    scrollWindow_(new ScrollWindow(210,65))
{
    // defaults
    height = 50;
    width = 80;

    
    this->setGuiPos(QPointF(1040,10));
    scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/hearts/heart_3-3.png"));
    connect(player, &Entity::healthChanged , this, &HPViewer::draw_);
}

QGraphicsItem *HPViewer::getGraphicsItem()
{
    return scrollWindow_->getGraphicsItem();
}


/// Sets the background of the InventoryViewer to the specified QPixmap.
/// @see InventoryViewer::setBackgroundColor(const QColor& color) for
/// more info.
void HPViewer::setBackgroundPixmap(const QPixmap &pixmap)
{
    scrollWindow_->setBackgroundPixmap(pixmap);
}


/// Returns the height of the InventoryViewer.
double HPViewer::getHeight()
{
    return height;
}

/// Returns the width of the InventoryViewer.
double HPViewer::getWidth()
{
    return width;
}

/// Draws the Inventory based on its current states.
void HPViewer::draw_(Entity *player)
{
    healthState = player->health();
    // draw background

    switch (healthState) {
        case 0 :
        scrollWindow_->removeAll();
        scrollWindow_->setHeight(720);
        scrollWindow_->setWidth(1280);
        this->setGuiPos(QPointF(0, 0));
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/Screen/DeathScreen.png"));
        break;

        case 1 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/hearts/heart_1-3.png"));
        break;

        case 2 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/hearts/heart_2-3.png"));
        break;

        case 3 :
        scrollWindow_->setBackgroundPixmap(QPixmap(":/resources/graphics/hearts/heart_3-3.png"));
        break;

    }
}

