/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
/*
for (var i = 0; i < array_length(global.recipes); i++)
{
	var output = global.recipes[i].output
	var recipeIcon = global.items[output].icon
	draw_sprite_stretched(sRecipeWindow, 0, self.x, self.y + (30 * i), x2, y2 + (30 * i))
	
}
*/

/// @description 


// Font
draw_set_font(ftStats);
align_center();

// Draw inventory
var _slotX = x;
var _slotY = y + headerHeight;

for (var i = 0; i < array_length(global.recipes); i ++) {
	var _slot = new Slot(inventory[i].output);
	
	// Hovered
	if (hoverSlotNum == i) {
		draw_set_alpha(0.3);
		draw_rectangle(_slotX, _slotY, _slotX + cellSize, _slotY + cellSize, 1);
		draw_set_alpha(1);
	}
	
	// Must be a struct
	if (is_struct(_slot)) {
		var _itemID = _slot.itemID;
		var _itemData = global.items[_itemID];
		var _drawAlpha = 1;
		
		// Grey out incompatible items
		//var _isCompatible = (self.forBattleUse || !_itemData.forBattleUse);
		
		//if (!_isCompatible) _drawAlpha = 0.3;
		
		// Sprite
		var _centerX = _slotX + cellSize * 0.5;
		var _centerY = _slotY + cellSize * 0.5;
		draw_sprite_ext(sRecipeWindow, 0, _centerX, _centerY, itemScale, itemScale, 0, -1, _drawAlpha);
		draw_sprite_ext(_itemData.icon, 0, _centerX, _centerY, itemScale, itemScale, 0, -1, _drawAlpha);
		
		// Draw properties
		align_center();
		draw_set_alpha(_drawAlpha);
		
		// Name
		draw_text_ext(_centerX, _centerY + (cellSize * 0.2), _itemData.name, 16, cellSize);
		
		// Count
		var _countX = _centerX - 30;
		var _countY = _centerY - 32;
		draw_circle_color(_countX, _countY, 12, c_gray, c_gray, 0);
		draw_text(_countX, _countY, string(_slot.count));
		
		// Reset alpha
		draw_set_alpha(1);
	}
	
	// Next slot position
	_slotX += cellSize;
	
	// End of row
	if (_slotX >= x + inventoryWidth) {
		_slotX = x;
		_slotY += cellSize;
	}
}

// Reset alignment
align_default();




