/// @description 

// Inherit the parent event
event_inherited();

// Header
headerText = "";
numPerPage = 5;
recipeListings = ds_list_create()
pageNum = 0;
hoverSlotNum = -1

recipeBoxWidth = 410
recipeBoxHeight = 130

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