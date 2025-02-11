/// @description 

// Inherit the parent event
event_inherited();

// Header
headerText = "MATERIALS";

// Properties
forBattleUse = instance_exists(oBattleManager);

// Inventory data
inventory = oPlayer.materials;

inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellsPerRow = 4;
cellSize = floor(inventoryWidth / cellsPerRow);
itemScale = 4;

// Input
hoverSlotNum = -1;