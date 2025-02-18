/// @description 

// Inherit the parent event
event_inherited();

enum EFFECT {
	MISSING
	
}

// Header
headerText = "";
numPerPage = 5;
recipeListings = ds_list_create()
playerMat = global.localPlayer.materials
numRecipesLoaded = 0;
pageNum = 1;
hoverSlotNum = -1
pageScrollAmount = 0
effect = EFFECT.MISSING;
effectSlot = -1;


totalPages = floor(array_length(global.recipes) / numPerPage)

recipeBoxWidth = 410
recipeBoxHeight = 130
canSelect = true
buttonWidth = 64
buttonHeight = 64
buttonMargin = 16


event_user(0)
/*
function getLayer() {
	// Get the sequence instance ID (assuming the object is in a sequence layer)
	var seq_inst = layer_sequence_get_instance(layer);

	// Get the number of layers in the sequence
	var layer_count = sequence_instance_get_child_count(seq_inst);

	// Loop through all layers in the sequence
	for (var i = 0; i < layer_count; i++) {
	    var layer_id = sequence_instance_get_child(seq_inst, i);

	    // Check if this layer has a track for the object
	    var track_id = sequence_layer_find_track(layer_id, id);

	    if (track_id != -1) {
	        show_debug_message("Object is on sequence layer: " + sequence_layer_get_name(layer_id));
	        break; // Found the correct layer, exit loop
	    }
	}
}
*/
function scrollPage(scrollPageAmount)
{
	if (pageNum == 0 and scrollPageAmount == -1)
	{
		
	}
	else if (pageNum == totalPages and scrollPageAmount == 1)
	{
		
	}
	else
	{
		pageNum += scrollPageAmount	
	}
	event_user(0)
}

function getNextPage(scrollPageAmount)
{
	if (pageNum == 0 and scrollPageAmount == -1)
	{
		return 0
	}
	else if (pageNum == totalPages and scrollPageAmount == 1)
	{
		return pageNum
	}
	else
	{
		return pageNum + scrollPageAmount
	}
}

/// @desc - Returns true or false if the player has enough of that material
function checkPlayerHasMaterial(itemID, amount, player)
{
	var materials = player.materials
	for (var i = 0; i < ds_list_size(materials); i++)
	{
		var _slot = ds_list_find_value(materials, i)
		if (_slot.itemID == itemID)
		{
			if (_slot.count >= amount)
			{
				return true
			}
		}
	}
	
	return false
}

function getPlayerMaterialAmount(itemID, amount, player)
{
	var materials = player.materials
	for (var i = 0; i < ds_list_size(materials); i++)
	{
		var _slot = ds_list_find_value(materials, i)
		if (_slot.itemID == itemID)
		{
			return _slot.count
		}
	}
	
	return 0
}

function effectCantCraft (_recipe)
{
	effectSlot = ds_list_find_index(recipeListings, _recipe)
	alarm[0] = 30
}
