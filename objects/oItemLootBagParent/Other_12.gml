/// @description Insert description here
// You can write your code in this editor

if (player != -1)
{
	// global.lootTable[LOOTTABLE.LOOT_BAG].GiveItems(player);
	var table = global.lootTable[global.items[itemID].lootTable]
	
	table.GiveItems(player);
	
	PlayPickupSound()
	
	instance_destroy();
}