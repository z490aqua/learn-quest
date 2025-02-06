/// @description Item Pickup Code (Polymorphism)
// You can write your code in this editor

if (player != -1)
{
	var _added = inventory_add(player.inventory, itemID);
	
		if (_added) {
			// Show dialogue box
			var _itemData = global.items[itemID];
			show_alert("You got a " + _itemData.name + "!", _itemData.icon);
			// Destroy item
			audio_play_sound(global.sounds[pickupSounds[irandom_range(0, array_length(pickupSounds) - 1)]], 0, false)
			
			
			instance_destroy();
		}
}