/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
headerText = "Recipes";
//show_message(string(get_sequence_scaleY()))
// Properties
forBattleUse = instance_exists(oBattleManager);
// Inventory data
inventory = global.recipes;
inventoryWidth = sprite_width * abs(self.image_xscale) * 7;
inventoryHeight = (sprite_height * abs(self.image_xscale)) * 7;


// Cells
cellsPerRow = 1;

SPRITESIZE = 16
itemScale = 4;
cellSize = floor(inventoryWidth / cellsPerRow);
cellSizeX = floor(self.x + (inventoryWidth / cellsPerRow));
cellSizeY = floor((SPRITESIZE * itemScale) + 13)


// Input
hoverSlotNum = -1;


offset = 30


function get_sequence_scaleY() {
	var inst_id = self.id
    var scale_y = 1;
    var parent_seq = layer_sequence_get_instance(layer_get_instance(inst_id));

    while (parent_seq != noone) {
        // Get the scale from the current sequence
        var seq_scale_y = layer_sequence_instance_get(parent_seq, inst_id, sequence_track_scale_y);

        // Multiply by the parent scale
        scale_y *= seq_scale_y;
        
        // Move up the hierarchy
        inst_id = parent_seq;
        parent_seq = layer_sequence_get_instance(instance_layer(inst_id));
    }

    return [scale_x, scale_y]; // Return both as an array
}



