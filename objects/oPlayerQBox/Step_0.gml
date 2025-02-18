/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter);
var _esc = keyboard_check_pressed(vk_escape);

var _move = _down - _up;

if(_move != 0)
{
	 index += _move;
	
	// clamp
	var _size = array_length(qArr);
	if(index < 0)
		index = _size - 1;
	else if(index >= _size)
		index = 0;
	
}

if(!global.paused) {
	_select = false;
}

if(_select)
{
	if(qArr[index] == string(global.q.correctValue)) {
		qC = layer_sequence_create(global.seqLayer3, 550, 400, seqCorrect);
		layer_sequence_xscale(qC, 1.2);
		layer_sequence_yscale(qC, 1.2);
		
		alarm[0] = 180;
	}
	else {
		qI = layer_sequence_create(global.seqLayer3, 550, 400, seqIncorrect);
		layer_sequence_xscale(qI, 1.2);
		layer_sequence_yscale(qI, 1.2);
		
		alarm[1] = 180;
	}
	
}

if(_esc) {
	global.paused = false;
	
	array_delete(qArr, 0, 4);
	
}
