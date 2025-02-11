/// @description 
event_inherited();

if(global.paused) {
	var qString = "";
	var _strRight = "";

	qString = global.q.content;

	var _x = x;
	var _y = y + headerHeight;

	draw_text(_x, _y, qString);

	draw_set_halign(fa_right);
	draw_text(_x + sprite_width, _y, _strRight);
	draw_set_halign(fa_left);

	draw_set_halign(fa_center);
	draw_set_font(ftDialogueMessage);

	var _gap = 40;
	var _size = 4;

	for(var i = 0; i < _size; i++) {
		draw_set_color(c_white);
		if(i == index)
			draw_set_color(#91CD46);
		
		draw_text(550, 700 * .4 + _gap * i, qArr[i]) 
	}
}	