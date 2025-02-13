/// @description Insert description here
// You can write your code in this editor
/// @description 
isSelected = false;
isHovered = false;

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _hover = false;

//var _hover = position_meeting(_mouseX, _mouseY, id);
if (_mouseX >= x and _mouseX <= x + inventoryWidth)
{
	if (_mouseY >= y + headerHeight and _mouseY <= y + inventoryHeight)
	{
		_hover = true;
	}
}


var _click = mouse_check_button_pressed(mb_left);

if (canSelect) {
	if (_hover) {
		isHovered = true;
	
		if (_click) {
			isSelected = true;
		}
	}
	
	canSelect = false;
}