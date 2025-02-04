/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

headerText = "Materials";

// Properties
forBattleUse = instance_exists(oBattleManager);

// Inventory data
//inventory = oPlayer.inventory;

inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellsPerRow = 4;
cellSize = floor(inventoryWidth / cellsPerRow);
itemScale = 4;

// Input
hoverSlotNum = -1;

