/// @description 
isSelected = false;
isHovered = false;
canSelect = false;

DrawImage = function (image) {
	static frame = 0;
	var imageSpeed = sprite_get_speed(image);
	var width = sprite_get_width(image);
	var height = sprite_get_height(image);
	
	var scaleX = sprite_width / width;
	var scaleY = sprite_height / height;
	
	draw_sprite_ext(image, frame,
		(x + sprite_width / 2), (y + sprite_height / 2),
		scaleX, scaleY, 0, -1, 1);
	
	frame += (1 / 60) * imageSpeed;
}

DrawBar = function (value, maxValue, text, drawY, drawHeight, maxColor, minColor) {
	var _x1 = x;
	var _y1 = y + drawY * sprite_height;
	var _x2 = _x1 + sprite_width;
	var _y2 = _y1 + drawHeight * sprite_height;
	
	draw_healthbar(_x1, _y1, _x2, _y2, (value / maxValue) * 100, -1, minColor, maxColor, 0, false, false);
	
	draw_set_font(ftStats);
	draw_text(_x1 + 4, _y1 - 8, text);
}