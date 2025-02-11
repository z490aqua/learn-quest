// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @param {array[struct]}  _itemHolders 
/// @param {real} _output - itemID
function Recipe(_itemHolders, _output) constructor
{
		items = _itemHolders
		
		output = _output
		
		Craft = function(_player)
		{		
			var indexes = CanCraft(_player, self)
			if(indexes != -1)
			{
				//Player is able to craft the recipe and has space to recieve the item
				
				for (var i = 0; i < array_length(items); i++)
				{
					var materialIndex = ds_map_find_value(indexes, items[i].itemID)
					inventory_deplete_slot_material(_player.materials, materialIndex, items[i].numItems)
					
					
				}
				
				inventory_add_uni(_player, output)
			}
			else
			{
				show_message("Unable to craft item")	
			}
			
		}
	
}
/// @desc - Returns a map
/// @desc Key: item id    -    Value: material index
function CanCraft(_player, _recipe){
	// Key         Value
	//    item id       material index
	var map = ds_map_create()
	for (var i = 0; i < array_length(_recipe.items); i++)
	{
		// iterates through items
		for (var k = 0; k < ds_list_size(_player.materials); k++)
		{
			//iterates through materials
			if (ds_list_find_value(_player.materials, k).itemID == _recipe.items[i].itemID)
			{
				ds_map_add(map, _recipe.items[i].itemID, k)
			}
						
		}
	}
	
	if (ds_map_size(map) == 0)
		return -1;
	else
		return map;
}



