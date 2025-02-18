/// @description Insert description here
// You can write your code in this editor
isSelected = false;
isHovered = false;
hoverSlotNum= -1;
canSelect = true;

var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _click = mouse_check_button_pressed(mb_left);

var _scrollButtonX = x - (buttonWidth + buttonMargin)


if (_mouseX >= x and _mouseX <= x + recipeBoxWidth)
{
	// Mouse x is between the bounds for recipe boxes
	if (_mouseY >= y and _mouseY <= y + (recipeBoxHeight * numPerPage))
	{
		hoverSlotNum = (_mouseY - y ) div 130
		//global.recipes[hoverSlotNum].Craft(global.localPlayer)
	}
}
else if (_mouseX >= _scrollButtonX and _mouseX <= _scrollButtonX + buttonWidth)
{
	// Mouse x is between the bounds for scroll buttons
	
	
}



if (canSelect) {
	if (hoverSlotNum != -1) {
		isHovered = true;
	
		if (_click) {
			isSelected = true;
			//global.recipes[hoverSlotNum].Craft(global.localPlayer)
		}
	}
	
	canSelect = false;
}



if (isSelected)
{
	global.recipes[hoverSlotNum].Craft(global.localPlayer)
}







