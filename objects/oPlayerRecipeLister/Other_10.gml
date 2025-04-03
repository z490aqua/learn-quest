/// @description Page Update
// You can write your code in this editor


ds_list_clear(recipeListings)
effectSlot = -1
for (var i = pageNum * numPerPage; i < array_length(global.recipes) and i < (pageNum * numPerPage) + numPerPage; i++)
{
	ds_list_add(recipeListings, global.recipes[i])
}

numRecipesLoaded = ds_list_size(recipeListings)
//show_message("Populted")