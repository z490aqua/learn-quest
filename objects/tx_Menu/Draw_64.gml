/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(ftDialogueMessage);

var _gap = 60;
var _size = 1;

for(var i = 0; i < _size; i++){
	draw_set_color(c_white);
		
	draw_text(window_get_width()/2, window_get_height()/0.65 * .4 + _gap * i, menu[i]) 
	
}

