/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter);

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

if(_select)
{
	switch(index){
		case 0:
			global.newGame = true;
			room_goto_next();
			break;
		case 1: 
			global.newGame = false;
			room_goto_next();
			break;
		case 2: 
			show_message("Coming soon");
			break;
		
		default: 
			game_end();
	}
}