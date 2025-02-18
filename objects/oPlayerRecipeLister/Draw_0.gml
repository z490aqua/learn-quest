/// @description 
event_inherited();
//draw_sprite(global.items[0].icon, 0, x, y)

for (var i = 0; i < ds_list_size(recipeListings); i++)
{
	if (effectSlot == i)
	{
		draw_sprite_ext(sRecipeBox, 0, x, y + (recipeBoxHeight * i), 1, 1, 0, make_color_hsv(5, 100, 255), 1)
	}
	else
	{
		draw_sprite_ext(sRecipeBox, 0, x, y + (recipeBoxHeight * i), 1, 1, 0, -1, 1)
	}
	
	draw_sprite_ext(global.items[ds_list_find_value(recipeListings, i).output].icon, 0, x + (16 * 3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2), 5, 5, 0, -1, 1)
	
	
	
	var _recipe = ds_list_find_value(recipeListings, i)
	for (var k = 0; k < array_length(_recipe.items); k++)
	{
		var _item = ds_list_find_value(recipeListings, i).items[k]
		var _icon = global.items[_item.itemID].icon
		
		// Num of item cost in recipe
		draw_text(x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + 50, string(_item.numItems))
		var materialAmount = getPlayerMaterialAmount(_item.itemID, _item.numItems, global.localPlayer)
		if (checkPlayerHasMaterial(_item.itemID, _item.numItems, global.localPlayer))
		{
			// When the player has that material it will appear normally
			draw_sprite_ext(_icon, 0, x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), 2, 2, 0, -1, 1)
			draw_text(x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), string(materialAmount))
		}
		else
		{
			// When the player has that material it will appear red
			draw_sprite_ext(_icon, 0, x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), 2, 2, 0, make_color_hsv(5, 255, 255), 1)
			draw_set_color(make_color_hsv(5, 255, 255))
			draw_text(x + (16 * 10) + (16 * k) + ((k * 16) * 1.3), y + (recipeBoxHeight * i) + (recipeBoxHeight / 2) + (16 * 2), string(materialAmount))
			draw_set_color(c_white)
		}
			
			
	}
	
	draw_text(x + 16, y + (recipeBoxHeight * i), string(global.items[ds_list_find_value(recipeListings, i).output].name))
	
	draw_text(x + 80, y + (recipeBoxHeight * i) + 50, "Costs: ")
}

// Recipe header and page number
draw_text(x, y - 40, "Recipes        Pg. " + string(pageNum + 1) + " of " + string(totalPages + 1))


//Page scroll buttons
draw_rectangle(x - (buttonWidth + buttonMargin), y, x - buttonMargin, y + buttonHeight, false) // Top Button
draw_rectangle(x - (buttonWidth + buttonMargin), y + (numPerPage * recipeBoxHeight) - buttonHeight, x - buttonMargin, y + (numPerPage * recipeBoxHeight), false) // Bottom Button


draw_set_color(c_black)
//Page Scroll Text
var nextPageTop = getNextPage(-1)
var nextPageBottom = getNextPage(1)
if (nextPageTop == pageNum)
{
	//if you cant scroll any more
	draw_text(x - (buttonWidth + buttonMargin - 1), y, "") // Top Button
}
else
{
	draw_text(x - (buttonWidth + buttonMargin - 1), y, "to pg. \n " + string((nextPageTop + 1))) // Top Button
}

if (nextPageBottom == pageNum)
{
	//if you cant scroll any more	
	draw_text(x - (buttonWidth + buttonMargin - 1), y + (numPerPage * recipeBoxHeight) - buttonHeight, "") // Bottom Button
}
else
{
	draw_text(x - (buttonWidth + buttonMargin - 1), y + (numPerPage * recipeBoxHeight) - buttonHeight, "to pg. \n " + string((nextPageBottom + 1))) // Bottom Button
}





