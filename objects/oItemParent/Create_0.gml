/// @description 
itemID = -1;
player = -1;



function PlayPickupSound()
{
	
	var sound = global.pickupSounds[itemID]
	if (sound == 0)
	{
		
		var placeholder = DefaultPickupSounds()
		var rnd = irandom_range(0, array_length(placeholder) - 1)
		audio_play_sound(placeholder[rnd], 0, false)
	}
	else
	{	
		var rnd = irandom_range(0, array_length(global.pickupSounds[itemID]) - 1)
		audio_play_sound(sound[rnd], 0, false)
	}
	
	return true
}