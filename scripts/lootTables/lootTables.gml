// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum LOOTTABLE 
{
	ENEMY_MASKEDGOON,
	LOOT_BAG,
	MATERIAL_CHEST_C,
	MATERIAL_CHEST_U,
	MATERIAL_CHEST_R,
	MATERIAL_CHEST_E,
	MATERIAL_CHEST_L
	
	
	
}


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


global.lootTable[LOOTTABLE.MATERIAL_CHEST_C] = 

new LootTable([
	new Drop(ITEM.IRON, 1, 2),
	new Drop(ITEM.SILVER, 0, 1, 0.1),
	new Drop(ITEM.COPPER, 1, 2),
	new Drop(ITEM.WOOD, 3, 6)
])

global.lootTable[LOOTTABLE.MATERIAL_CHEST_U] = 

new LootTable([
	new Drop(ITEM.IRON, 1, 4),
	new Drop(ITEM.SILVER, 0, 2, 0.3),
	new Drop(ITEM.COPPER, 1, 6),
	new Drop(ITEM.WOOD, 5, 8)
])

global.lootTable[LOOTTABLE.MATERIAL_CHEST_R] = 

new LootTable([
	new Drop(ITEM.IRON, 4, 10),
	new Drop(ITEM.SILVER, 1, 3, 0.6),
	new Drop(ITEM.COPPER, 6, 14),
	new Drop(ITEM.WOOD, 10, 15),
	new Drop(ITEM.GOLD, 1, 1, 0.1)
])

global.lootTable[LOOTTABLE.MATERIAL_CHEST_E] = 

new LootTable([
	new Drop(ITEM.IRON, 8, 20),
	new Drop(ITEM.SILVER, 1, 5),
	new Drop(ITEM.COPPER, 6, 14),
	new Drop(ITEM.WOOD, 10, 15),
	new Drop(ITEM.GOLD, 1, 3, 0.3)
])

global.lootTable[LOOTTABLE.MATERIAL_CHEST_L] = 

new LootTable([
	new Drop(ITEM.IRON, 20, 50),
	new Drop(ITEM.SILVER, 1, 8),
	new Drop(ITEM.COPPER, 40, 75),
	new Drop(ITEM.WOOD, 50, 100),
	new Drop(ITEM.GOLD, 1, 5)
])
