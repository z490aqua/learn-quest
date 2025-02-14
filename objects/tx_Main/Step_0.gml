/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) and !global.paused;

var _move = _down - _up;

if(_move != 0)
{
		index += _move;
	
	// clamp
	var _size = array_length(menu);
	if(index < 0)
		index = _size - 1;
	else if(index >= _size)
		index = 0;
	
}

if(!global.paused) {
	layer_sequence_destroy(pauseSeqElm);
}

if(_select)
{
	layer_sequence_destroy(pauseSeqElm);
	
	switch(index){
		case 0: 
			if (global.paused == false) {
				global.paused = true;
				pauseSeqElm = layer_sequence_create(global.seqLayer, 0, 0, seqInventoryMenu);
			}
			
			else {
				global.paused = false;
				layer_sequence_destroy(pauseSeqElm);
			}
			break;
		case 1: 
			if (global.paused == false) {
				global.paused = true;
				pauseSeqElm = layer_sequence_create(global.seqLayer, 0, 0, seqMaterialMenu);
			}
			
			else {
				global.paused = false;
				layer_sequence_destroy(pauseSeqElm);
			}
			break;
		case 2: 
			if (global.paused == false) {
				global.paused = true;
				pauseSeqElm = layer_sequence_create(global.seqLayer, 0, 0, seqStats);
			}
			
			else {
				global.paused = false;
				layer_sequence_destroy(pauseSeqElm);
			}
			break;
		
		default: 
			if (global.paused == false) {
				global.paused = true;
				pauseSeqElm = layer_sequence_create(global.seqLayer, 0, 0, seqQBox);
			}
			
			else {
				global.paused = false;
				layer_sequence_destroy(pauseSeqElm);
			}
			break;
	}
}
