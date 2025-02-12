/// @description 

// Inherit the parent event
event_inherited();

// Die
if (!instance_exists(oBattleManager) && hp <= 0) {
	
	instance_create_layer(x, y, "Instances", oMaterial_Chest_C);
	
	instance_destroy();
}