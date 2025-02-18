/// @description Insert description here
// You can write your code in this editor
isSelected = false;
isHovered = false;
hoverSlotNum= -1;
canSelect = true;
pageScrollAmount = 0;
/*
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
*/
var _mouseX = global.inputScreenMouseX
var _mouseY = global.inputScreenMouseY
var _click = global.inputLeftTapped	



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
		if (_mouseY >= y and _mouseY <= y + buttonHeight)
		{
			pageScrollAmount = -1
		}
		else if (_mouseY >= y + (numPerPage * recipeBoxHeight) - buttonHeight and _mouseY <= y + (numPerPage * recipeBoxHeight))
		{
			pageScrollAmount = 1
		}
	
}


if (canSelect) {
	if (hoverSlotNum != -1 or pageScrollAmount != 0) {
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
	// If the mouse clicked anywhere on the screen
	
	if (pageScrollAmount != 0)
	{
		//If one of the scroll buttons are hovered
		scrollPage(pageScrollAmount)
		event_user(0)
	}
	else
	{
		if (hoverSlotNum < ds_list_size(recipeListings))
		{
			//If selected slot actually has a recipe in it
			var _recipe = global.recipes[hoverSlotNum + (numPerPage * pageNum)].Craft(global.localPlayer)
			
			if (_recipe != -1)
			{
				//Craft was unsuccesful 
				//Yes I know that its != -1 
				//That is intentional DO NOT CHANGE IT
				
				effectCantCraft(_recipe)
			}
		}
	}
	
}

