/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
headerText = "Recipes";

// Properties
forBattleUse = instance_exists(oBattleManager);

// Inventory data
inventory = global.recipes;

inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellsPerRow = 1;
cellSize = floor(inventoryWidth / cellsPerRow);
itemScale = 4;

// Input
hoverSlotNum = -1;


offset = 30




