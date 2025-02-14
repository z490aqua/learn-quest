/// @description 
event_inherited();
draw_sprite(global.items[0].icon, 0, x, y)

for (var i = 0; i < ds_list_size(recipeListings); i++)
{
	draw_sprite(sRecipeBox, 0, x, y + (recipeBoxHeight * i))
	
	draw_sprite_ext(global.items[ds_list_find_value(recipeListings, i).output].icon, 0, x, y + (recipeBoxHeight * i), 5, 5, 0, -1, 1)
}

