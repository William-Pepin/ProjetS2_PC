QT       += core gui widgets multimedia # we want to use these qt modules

greaterThan(QT_MAJOR_VERSION, 4): # we require at least qt version 4

CONFIG += c++14 resources_big # we require a C++14 compatible compiler and are putting big resources in the .res file

# these are the sources we need
SOURCES += \ # this is just so we can line up all our sources nicely
    $$PWD/BatteryViewer.cpp \
    $$PWD/EndViewer.cpp \
    $$PWD/GrabbedViewer.cpp \
    $$PWD/HPViewer.cpp \
    $$PWD/MCRegionEmitter.cpp \
    $$PWD/Map.cpp \     # note: $$PWD macor resolves into whatever directory this .pri file is at
    $$PWD/Game.cpp \
    $$PWD/Grid.cpp \
    $$PWD/MapController.cpp \
    $$PWD/Node.cpp \
    $$PWD/Sprite.cpp \
    $$PWD/Edge.cpp \
    $$PWD/Graph.cpp \
    $$PWD/PathGrid.cpp \
    $$PWD/PathingMap.cpp \
    $$PWD/Tree.cpp \
    $$PWD/CountExpiringTimer.cpp \
    $$PWD/MeleeWeapon.cpp \
    $$PWD/Spear.cpp \
    $$PWD/Entity.cpp \
    $$PWD/Axe.cpp \
    $$PWD/Sound.cpp \
    $$PWD/Item.cpp \
    $$PWD/Inventory.cpp \
    $$PWD/EquipableItem.cpp \
    $$PWD/EntityTargetItem.cpp \
    $$PWD/NoTargetItem.cpp \
    $$PWD/PointTargetItem.cpp \
    $$PWD/Slot.cpp \
    $$PWD/MeleeWeaponSlot.cpp \
    $$PWD/Projectile.cpp \
    $$PWD/RangedWeapon.cpp \
    $$PWD/Bow.cpp \
    $$PWD/RangedWeaponSlot.cpp \
    $$PWD/Weapon.cpp \
    $$PWD/WeaponSlot.cpp \
    $$PWD/AsyncShortestPathFinder.cpp \
    $$PWD/SpearProjectile.cpp \
    $$PWD/InventoryViewer.cpp \
    $$PWD/ItemRainOfSpears.cpp \
    $$PWD/ItemTeleport.cpp \
    $$PWD/ItemPushback.cpp \
    $$PWD/RainWeather.cpp \
    $$PWD/MapGrid.cpp \
    $$PWD/SnowWeather.cpp \
    $$PWD/WeatherEffect.cpp \
    $$PWD/Gui.cpp \
    $$PWD/Panel.cpp \
    $$PWD/Button.cpp \
    $$PWD/Bar.cpp \
    $$PWD/TerrainLayer.cpp \
    $$PWD/RandomImageEntity.cpp \
    $$PWD/Utilities.cpp \
    $$PWD/FogWeather.cpp \
    $$PWD/Quest.cpp \
    $$PWD/Quests.cpp \
    $$PWD/QuestViewer.cpp \
    $$PWD/Label.cpp \
    $$PWD/ScrollWindow.cpp \
    $$PWD/ScrollBar.cpp \
    $$PWD/QtUtilities.cpp \
    $$PWD/DialogGui.cpp \
    $$PWD/ItemCell.cpp \
    $$PWD/InventoryUser.cpp \
    $$PWD/QuestAcceptor.cpp \
    $$PWD/ShopGui.cpp \
    $$PWD/ItemGold.cpp \
    $$PWD/BodyThrust.cpp \
    $$PWD/Ability.cpp \
    $$PWD/NoTargetAbility.cpp \
    $$PWD/PointTargetAbility.cpp \
    $$PWD/EntityTargetAbility.cpp \
    $$PWD/ECRotater.cpp \
    $$PWD/ECFieldOfViewEmitter.cpp \
    $$PWD/ECBodyThruster.cpp \
    $$PWD/AbilityCell.cpp \
    $$PWD/ShopGuiBehavior.cpp \
    $$PWD/ShopBehaviorNoCost.cpp \
    $$PWD/CollisionBehavior.cpp \
    $$PWD/CBDamage.cpp \
    $$PWD/DestReachedBehavior.cpp \
    $$PWD/DRBDestroyProjectile.cpp \
    $$PWD/PositionalSound.cpp \
    $$PWD/PointerGrid.cpp \
    $$PWD/SpriteSheet.cpp \
    $$PWD/Animation.cpp \
    $$PWD/EntitySprite.cpp \
    $$PWD/TopDownSprite.cpp \
    $$PWD/AngledSprite.cpp \
    $$PWD/EntityController.cpp \
    $$PWD/ECMover.cpp \
    $$PWD/ECEnemyAttacker.cpp \
    $$PWD/ECCurrentMapGrabber.cpp \
    $$PWD/ECKeyboardMover8Directional.cpp \
    $$PWD/ECKeyboardMover4Directional.cpp \
    $$PWD/ECKeyboardMoverPerspective.cpp \
    $$PWD/ECMapMover.cpp \
    $$PWD/ECCameraFollower.cpp \
    $$PWD/ECItemPickerUpper.cpp \
    $$PWD/ECMouseFacer.cpp \
    $$PWD/ECPathMover.cpp \
    $$PWD/ECSineMover.cpp \
    $$PWD/ECStraightMover.cpp \
    $$PWD/EndViewer.cpp \
    $$PWD/FireballLauncher.cpp \
    $$PWD/AnimationAttack.cpp \
    $$PWD/ECChaser.cpp \
    $$PWD/PlayingAnimationInfo.cpp \
    $$PWD/MCSpawner.cpp \
    $$PWD/RandomGenerator.cpp \
    $$PWD/CItemDropper.cpp \
    $$PWD/ItemHealthPotion.cpp \
    $$PWD/CHealthShower.cpp \
    $$PWD/ECGuiShower.cpp \
    $$PWD/ECMerchant.cpp \
    $$PWD/RainOfSpearsAbility.cpp \
    $$PWD/ShardsOfFireAbility.cpp \
    $$PWD/ItemShardsOfFire.cpp \
    $$PWD/EntityCreator.cpp \
    $$PWD/DiplomacyManager.cpp

# these are the headers we use
HEADERS  += \ # this is just so we can line up all our headers nicely
    $$PWD/BatteryViewer.h \
    $$PWD/EndViewer.h \
    $$PWD/GrabbedViewer.h \
    $$PWD/HPViewer.h \
    $$PWD/MCRegionEmitter.h \
    $$PWD/Map.h \
    $$PWD/Game.h \
    $$PWD/Grid.h \
    $$PWD/MapController.h \
    $$PWD/Node.h \
    $$PWD/Sprite.h \
    $$PWD/Edge.h \
    $$PWD/Graph.h \
    $$PWD/PathGrid.h \
    $$PWD/PathingMap.h \
    $$PWD/Tree.h \
    $$PWD/CountExpiringTimer.h \
    $$PWD/MeleeWeapon.h \
    $$PWD/Spear.h \
    $$PWD/Entity.h \
    $$PWD/Axe.h \
    $$PWD/Sound.h \
    $$PWD/Item.h \
    $$PWD/Inventory.h \
    $$PWD/EquipableItem.h \
    $$PWD/EntityTargetItem.h \
    $$PWD/NoTargetItem.h \
    $$PWD/PointTargetItem.h \
    $$PWD/Slot.h \
    $$PWD/MeleeWeaponSlot.h \
    $$PWD/Projectile.h \
    $$PWD/RangedWeapon.h \
    $$PWD/Bow.h \
    $$PWD/RangedWeaponSlot.h \
    $$PWD/Weapon.h \
    $$PWD/WeaponSlot.h \
    $$PWD/AsyncShortestPathFinder.h \
    $$PWD/SpearProjectile.h \
    $$PWD/InventoryViewer.h \
    $$PWD/ItemRainOfSpears.h \
    $$PWD/ItemTeleport.h \
    $$PWD/ItemPushback.h \
    $$PWD/RainWeather.h \
    $$PWD/MapGrid.h \
    $$PWD/SnowWeather.h \
    $$PWD/WeatherEffect.h \
    $$PWD/Gui.h \
    $$PWD/Panel.h \
    $$PWD/Button.h \
    $$PWD/Bar.h \
    $$PWD/TerrainLayer.h \
    $$PWD/RandomImageEntity.h \
    $$PWD/Utilities.h \
    $$PWD/FogWeather.h \
    $$PWD/Quest.h \
    $$PWD/Quests.h \
    $$PWD/QuestViewer.h \
    $$PWD/Label.h \
    $$PWD/ScrollWindow.h \
    $$PWD/ScrollBar.h \
    $$PWD/QtUtilities.h \
    $$PWD/DialogGui.h \
    $$PWD/ItemCell.h \
    $$PWD/InventoryUser.h \
    $$PWD/QuestAcceptor.h \
    $$PWD/ShopGui.h \
    $$PWD/ItemGold.h \
    $$PWD/BodyThrust.h \
    $$PWD/Ability.h \
    $$PWD/NoTargetAbility.h \
    $$PWD/PointTargetAbility.h \
    $$PWD/EntityTargetAbility.h \
    $$PWD/ECRotater.h \
    $$PWD/ECFieldOfViewEmitter.h \
    $$PWD/ECBodyThruster.h \
    $$PWD/AbilityCell.h \
    $$PWD/ShopGuiBehavior.h \
    $$PWD/ShopBehaviorNoCost.h \
    $$PWD/CollisionBehavior.h \
    $$PWD/CBDamage.h \
    $$PWD/DestReachedBehavior.h \
    $$PWD/DRBDestroyProjectile.h \
    $$PWD/PositionalSound.h \
    $$PWD/PointerGrid.h \
    $$PWD/SpriteSheet.h \
    $$PWD/Animation.h \
    $$PWD/EntitySprite.h \
    $$PWD/TopDownSprite.h \
    $$PWD/AngledSprite.h \
    $$PWD/EntityController.h \
    $$PWD/ECMover.h \
    $$PWD/ECEnemyAttacker.h \
    $$PWD/ECCurrentMapGrabber.h \
    $$PWD/ECKeyboardMover8Directional.h \
    $$PWD/ECKeyboardMover4Directional.h \
    $$PWD/ECKeyboardMoverPerspective.h \
    $$PWD/ECMapMover.h \
    $$PWD/ECCameraFollower.h \
    $$PWD/ECItemPickerUpper.h \
    $$PWD/ECMouseFacer.h \
    $$PWD/ECPathMover.h \
    $$PWD/ECSineMover.h \
    $$PWD/ECStraightMover.h \
    $$PWD/EndViewer.h \
    $$PWD/FireballLauncher.h \
    $$PWD/AnimationAttack.h \
    $$PWD/ECChaser.h \
    $$PWD/PlayingAnimationInfo.h \
    $$PWD/MCSpawner.h \
    $$PWD/RandomGenerator.h \
    $$PWD/CItemDropper.h \
    $$PWD/STLWrappers.h \
    $$PWD/ItemHealthPotion.h \
    $$PWD/CHealthShower.h \
    $$PWD/ECGuiShower.h \
    $$PWD/ECMerchant.h \
    $$PWD/RainOfSpearsAbility.h \
    $$PWD/ShardsOfFireAbility.h \
    $$PWD/ItemShardsOfFire.h \
    $$PWD/EntityCreator.h \
    $$PWD/DiplomacyManager.h

RESOURCES += \ # this is our resource file (specifies resources (images, audio files, etc) we want embedded in our executable)
    $$PWD/res.qrc

PRECOMPILED_HEADER += \
    $$PWD/Vendor.h
