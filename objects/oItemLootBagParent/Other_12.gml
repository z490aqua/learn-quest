/// @description Insert description here
// You can write your code in this editor

if (player != -1)
{
	// global.lootTable[LOOTTABLE.LOOT_BAG].GiveItems(player);
	var table = global.lootTable[LOOTTABLE.LOOT_BAG]
	
	table.GiveItems(player);
	
	PlayPickupSound()
	
	instance_destroy();
}