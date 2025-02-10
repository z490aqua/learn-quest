// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum LOOTTABLE 
{
	ENEMY_MASKEDGOON,
	LOOT_BAG
	
	
	
}
drop = global.items[ITEM.IRON]//Drop(ITEM.IRON, 0, 3)
global.lootTable[LOOTTABLE.ENEMY_MASKEDGOON] = 

new LootTable([
	new Drop(ITEM.IRON, 0, 3, 1),
	new Drop(ITEM.GOLD, 0, 1, 0.1),
	new Drop(ITEM.COPPER, 0, 2, 0.5)
])


global.lootTable[LOOTTABLE.LOOT_BAG] = 

new LootTable([
	new Drop(ITEM.IRON, 1, 3),
	new Drop(ITEM.GOLD, 0, 1, 0.1),
	new Drop(ITEM.COPPER, 1, 2)
])
