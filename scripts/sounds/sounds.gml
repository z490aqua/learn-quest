enum SOUNDS {
	BRUH1,
	BRUH2,
	BRUH3,
	WOODPICKUP1,
	WOODPICKUP2,
	WOODPICKUP3,
	STONEPICKUP1,
	STONEPICKUP2,
	STONEPICKUP3
}
global.sounds[SOUNDS.BRUH1] = bruh1
global.sounds[SOUNDS.BRUH2] = bruh2
global.sounds[SOUNDS.BRUH3] = bruh3
global.sounds[SOUNDS.WOODPICKUP1] = wood_pickup1
global.sounds[SOUNDS.WOODPICKUP2] = wood_pickup2
global.sounds[SOUNDS.WOODPICKUP3] = wood_pickup3
global.sounds[SOUNDS.STONEPICKUP1] = stone_pickup1
global.sounds[SOUNDS.STONEPICKUP2] =  stone_pickup2
global.sounds[SOUNDS.STONEPICKUP3] =  stone_pickup3

#region Pickup Sounds
global.pickupSounds[ITEM.COPPER] = [stone_pickup1, stone_pickup2, stone_pickup3]
global.pickupSounds[ITEM.GOLD] = [stone_pickup1, stone_pickup2, stone_pickup3]
global.pickupSounds[ITEM.IRON] = [stone_pickup1, stone_pickup2, stone_pickup3]
global.pickupSounds[ITEM.SILVER] = [stone_pickup1, stone_pickup2, stone_pickup3]
global.pickupSounds[ITEM.WOOD] = [wood_pickup1, wood_pickup2, wood_pickup3]
#endregion

//Template
//global.sounds[] = 