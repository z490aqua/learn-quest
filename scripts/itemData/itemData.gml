enum ITEM {
	BANDAGE,
	WEAK_POTION,
	POTION,
	NOT_POTION,
	
	BATTLE_ATTACK,
	BATTLE_DEFENSE,
	
	PERM_ATTACK,
	PERM_DEFENSE
	
}

global.items[ITEM.BANDAGE] = new HealingItem("Bandage", sBandage, 20);
global.items[ITEM.WEAK_POTION] = new HealingItem("Weak Potion", sPotion, 35);
global.items[ITEM.POTION] = new HealingItem("Potion", sPotion, 50);
global.items[ITEM.NOT_POTION] = new HealingItem("Not-Potion", sPotion, 0);

global.items[ITEM.BATTLE_ATTACK] = new AttackIncrease("Battle Attack+", sBattleAttack, 15, true);
global.items[ITEM.BATTLE_DEFENSE] = new DefenseIncrease("Battle Defense+", sBattleDefense, 15, true);

global.items[ITEM.PERM_ATTACK] = new AttackIncrease("Perm Attack+", sPermAttack, 10, false);
global.items[ITEM.PERM_DEFENSE] = new DefenseIncrease("Perm Defense+", sPermDefense, 10, false);
