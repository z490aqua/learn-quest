/// @description Insert description here
// You can write your code in this editor
isSelected = false;
isHovered = false;
hoverSlotNum= -1;

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _click = mouse_check_button_pressed(mb_left);


if (_mouseX >= x and _mouseX <= x + recipeBoxWidth)
{
	if (_mouseY >= y and _mouseY <= y + (recipeBoxHeight * numPerPage))
	{
		hoverSlotNum = (_mouseY - y ) div 130
	}
}



if (canSelect) {
	if (hoverSlotNum != -1) {
		isHovered = true;
	
		if (_click) {
			isSelected = true;
		}
	}
	
	canSelect = false;
}






