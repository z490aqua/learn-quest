/// @description Item Pickup Code (Polymorphism)
// You can write your code in this editor


if (player != -1)
{
	var _added = inventory_add_material(player.materials, materialId);
	

		if (_added) {
			// Show dialogue box
			//var _itemData = global.items[itemID];
			//show_alert("You got a " + _itemData.name + "!", _itemData.icon);
		
			// Destroy item
			instance_destroy();
		}

}