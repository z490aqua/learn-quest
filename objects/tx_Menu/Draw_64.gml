/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(ftDialogueMessage);

var _gap = 60;
var _size = 4;

for(var i = 0; i < _size; i++){
	draw_set_color(c_white);
	if(i == index)
		draw_set_color(#91CD46);
		
	draw_text(102, 102 * .4 + _gap * i, menu[i]) 
}