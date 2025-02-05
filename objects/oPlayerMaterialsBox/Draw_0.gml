/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var listString = "";
for (var i = 0; i < ds_list_size(materials); i++)
{
	var _slot = ds_list_find_value(materials, i)
	if(is_struct(_slot))	
	{
		var balls = global.materials[_slot.itemID].name + ": " +  string(_slot.count) + "  -  ";
		listString += balls
	}
}


draw_text(10, 10, listString)
