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
	if(index == 0) {
		keyboard_key_press(vk_escape);
		keyboard_key_release(vk_escape);
	}
	if(index == 1) {
		game_end();
	}
}

if(_esc) {
	global.paused = false;
	
	array_delete(qArr, 0, 4);
	
}
