/// @description 
// Update dimensions

/*
inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;
*/

// Cells
cellSize = floor(inventoryWidth / cellsPerRow);

#region Input
// Reset input
hoverSlotNum = -1;

// Get input
if (isHovered) {
	var _slotX = x;
	var _slotY = y + headerHeight;
	// Relative mouse position
	var _mouseX = device_mouse_x_to_gui(0) - x;
	var _mouseY = device_mouse_y_to_gui(0) - (y + headerHeight);

	// To cell coordinates
	var _cellX = floor(_mouseX / cellSizeX);
	var _cellY = floor(_mouseY / cellSizeY);
	
	// To slot number
	var _slotNum = (cellsPerRow * _cellY) + _cellX;
	
	if (_slotNum < array_length(global.recipes)) {
		hoverSlotNum = _slotNum;
		
		if(_slotNum > 0){
			var _slot = inventory[_slotNum];
		}
		else {
			var _slot = inventory[1];
		}
		
		// Click
		
		/*
		if (isSelected && is_struct(_slot)) {
			// Get item data
			var _itemID = _slot.itemID;
			var _itemData = global.items[_itemID];
			
			var _isCompatible = (self.forBattleUse || !_itemData.forBattleUse);
			
			// Call effect method
			var _effectMethod = _itemData.Effect;
			
			if (_isCompatible && is_method(_effectMethod)) {
				var _used = _effectMethod(oPlayer);
			
				// Use up item
				if (_used) {
					inventory_deplete_slot(inventory, _slotNum, 1);
					
					// If in battle, destroy
					if (forBattleUse) {
						oBattleManager.itemMenuOpen = false;
						instance_destroy();
					}
				}
			}
		}
		*/
		
	}
}
#endregion