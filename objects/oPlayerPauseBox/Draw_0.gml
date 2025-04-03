/// @description 
event_inherited();

var _gap = 40;
var _size = 2;

for(var i = 0; i < _size; i++) {
	draw_set_color(c_white);
	if(i == index)
		draw_set_color(#91CD46);
		
	draw_text(500, 700 * .4 + _gap * i, qArr[i]) 
}