/// @description 

if (xp >= nextLevelXP) {
	log("Leveling up (", xp, " / ", nextLevelXP, ")");
	level ++;
	
	baseLevelXP = nextLevelXP;
	nextLevelXP = xp_for_next_level(level);
}

if (hp > maxHP) {
	hp = maxHP;
}