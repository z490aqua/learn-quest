/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
	SetSprite(states.idle);
	exit;
}

var _move_spd = 1;
var _found_player = mp_grid_path(global.AI_MPGrid, path, x, y, device_mouse_x(0), device_mouse_y(0), true);
	
if _found_player 
{
	path_start(path, _move_spd, path_action_stop, true);	
}
