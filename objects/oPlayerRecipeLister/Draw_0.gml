/// @description 
event_inherited();
draw_sprite(global.items[0].icon, 0, x, y)

for (var i = 0; i < ds_list_size(recipeListings); i++)
{
	draw_sprite(sRecipeBox, 0, x, y + (recipeBoxHeight * i))
	
	draw_sprite_ext(global.items[ds_list_find_value(recipeListings, i).output].icon, 0, x + (16 * 3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2), 5, 5, 0, -1, 1)
	
	
	
	var _recipe = ds_list_find_value(recipeListings, i)
	for (var k = 0; k < array_length(_recipe.items); k++)
	{
		var _item = ds_list_find_value(recipeListings, i).items[k]
		var _icon = global.items[_item.itemID].icon
			draw_sprite_ext(_icon, 0, x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), 2, 2, 0, -1, 1)
			draw_text(x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), string(_item.numItems))
	}
	
	draw_text(x + 16, y + (recipeBoxHeight * i), string(global.items[ds_list_find_value(recipeListings, i).output].name))
	
	draw_text(x + 80, y + (recipeBoxHeight * i) + 50, "Costs: ")
}



var buttonWidth = 64
var buttonHeight = 64
var buttonMargin = 16
draw_rectangle(x - (buttonWidth + buttonMargin), y, x - buttonMargin, y + buttonHeight, false)


