enum ITEM {
	BANDAGE,
	WEAK_POTION,
	POTION,
	NOT_POTION,
	
	BATTLE_ATTACK,
	BATTLE_DEFENSE,
	
	PERM_ATTACK,
	PERM_DEFENSE,
	//Materials
	COPPER,
	GOLD,
	IRON,
	SILVER,
	WOOD,
	COPPERMILK,
	
	//Loot Bags
	MATERIAL_CHEST_C,
	MATERIAL_CHEST_U,
	MATERIAL_CHEST_R,
	MATERIAL_CHEST_E,
	MATERIAL_CHEST_L,
	
	//Testing
	TESTINGBAG,
	
	//Extra testing
	HEHE
	
}

#region Items
global.items[ITEM.BANDAGE] = new HealingItem("Bandage", sBandage, 20);
global.items[ITEM.WEAK_POTION] = new HealingItem("Weak Potion", sPotion, 35);
global.items[ITEM.POTION] = new HealingItem("Potion", sPotion, 50);
global.items[ITEM.NOT_POTION] = new HealingItem("Not-Potion", sPotion, 0);

global.items[ITEM.BATTLE_ATTACK] = new AttackIncrease("Battle Attack+", sBattleAttack, 15, true);
global.items[ITEM.BATTLE_DEFENSE] = new DefenseIncrease("Battle Defense+", sBattleDefense, 15, true);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease("Perm Attack+", sPermAttack, 10, false);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease("Perm Defense+", sPermDefense, 10, false);

//Materials
global.items[ITEM.COPPER] = new Material("Copper", sCopper);
global.items[ITEM.GOLD] = new Material("Gold", sGold);
global.items[ITEM.IRON] = new Material("Iron", sIron);
global.items[ITEM.SILVER] = new Material("Silver", sSilver);
global.items[ITEM.WOOD] = new Material("Wood", sWood);
global.items[ITEM.COPPERMILK] = new Material("Copper Milk", sCopperMilk);

//Loot Bags
global.items[ITEM.MATERIAL_CHEST_C] = new LootBag("Common Materials Chest", sMaterialChest_C, LOOTTABLE.MATERIAL_CHEST_C)
global.items[ITEM.MATERIAL_CHEST_U] = new LootBag("Uncommon Materials Chest", sMaterialChest_U, LOOTTABLE.MATERIAL_CHEST_U)
global.items[ITEM.MATERIAL_CHEST_R] = new LootBag("Rare Materials Chest", sMaterialChest_R, LOOTTABLE.MATERIAL_CHEST_R)
global.items[ITEM.MATERIAL_CHEST_E] = new LootBag("Epic Materials Chest", sMissing, LOOTTABLE.MATERIAL_CHEST_E)
global.items[ITEM.MATERIAL_CHEST_L] = new LootBag("Legendary Materials Chest", sMaterialChest_L, LOOTTABLE.MATERIAL_CHEST_L)

//Testing
global.items[ITEM.TESTINGBAG] = new LootBag("Test Loot bag", sMissing, LOOTTABLE.LOOT_BAG);
#endregion
//show_message(instanceof(global.items[ITEM.WOOD]))

