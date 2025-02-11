/// @description Insert description here
// You can write your code in this editor
menu[0] = "Inventory";
menu[1] = "Crafting";
menu[2] = "Stats";
menu[3] = "Exit";

index = 0;
pauseSeqElm = -1;

layer_script_begin(global.seqLayer, sequence_layer_draw_begin);
layer_script_end(global.seqLayer, sequence_layer_draw_end);
layer_script_begin(global.seqLayer2, sequence_layer_draw_begin);
layer_script_end(global.seqLayer2, sequence_layer_draw_end);