// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum LOOTTABLE 
{
	ENEMY_MASKEDGOON,
	LOOT_BAG
	
	
	
}

global.lootTable[LOOTTABLE.ENEMY_MASKEDGOON] = 

LootTable([
	Drop(ITEM.IRON, 0, 3),
	Drop(ITEM.GOLD, 0, 1, 0.1),
	Drop(ITEM.COPPER, 1, 2)
])


global.lootTable[LOOTTABLE.LOOT_BAG] = 

LootTable([
	Drop(ITEM.IRON, 0, 3),
	Drop(ITEM.GOLD, 0, 1, 0.1),
	Drop(ITEM.COPPER, 1, 2)
])
