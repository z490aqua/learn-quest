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
		show_message("Correct!");
		next_question();
		
		qArr[0] = "1";
		qArr[1] = "2";
		qArr[2] = "3";
		qArr[3] = "4";
		
		array_delete(qArr, 0, 4);
		
		global.ansArr = make_plausible_answers(global.q.correctValue, global.q.numToDraw);

		for(var i = 0; i < global.q.numToDraw; i++) {
			qArr[i] = string(global.ansArr[i]);
		}
		
		index = 0;
		
		oPlayer.correct_this_session++;
		oPlayer.correct_all_time++;
	}
	else {
		show_message("Wrong! Try again!");
		
		oPlayer.incorrect_this_session++;
		oPlayer.incorrect_all_time++;
	}
	
}

if(_esc) {
	global.paused = false;
	
	array_delete(qArr, 0, 4);
	
}