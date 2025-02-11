/// @description 
event_inherited();

var _strLeft = "";
var _strRight = "";

if (instance_exists(oPlayer)) {
	_strLeft += "Correct\n";
	_strLeft += "Correct [all time]\n";
	_strLeft += "Incorrect\n";
	_strLeft += "Incorrect [all time]\n";
	_strLeft += "% correct\n";
	
	_strRight += string(oPlayer.correct_this_session) + "\n";
	_strRight += string(oPlayer.correct_all_time) + "\n";
	_strRight += string(oPlayer.incorrect_this_session) + "\n";
	_strRight += string(oPlayer.incorrect_all_time) + "\n";
	_strRight += string(oPlayer.correct_all_time/oPlayer.incorrect_all_time) + "\n";
}

var _x = x;
var _y = y + headerHeight;
draw_text(_x, _y, _strLeft);

draw_set_halign(fa_right);
draw_text(_x + sprite_width, _y, _strRight);
draw_set_halign(fa_left);