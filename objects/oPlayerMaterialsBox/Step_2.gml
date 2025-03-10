/// @description 
// Update dimensions
inventoryWidth = sprite_width;
inventoryHeight = sprite_height - headerHeight;

// Cells
cellSize = floor(inventoryWidth / 4);

#region Input
// Reset input
hoverSlotNum = -1;

// Get input
if (isHovered) {
	// Relative mouse position
	var _mouseX = device_mouse_x_to_gui(0) - x;
	var _mouseY = device_mouse_y_to_gui(0) - (y + headerHeight);

	// To cell coordinates
	var _cellX = floor(_mouseX / cellSize);
	var _cellY = floor(_mouseY / cellSize);
	
	// To slot number
	var _slotNum = (cellsPerRow * _cellY) + _cellX;
	
	if (_slotNum < INVENTORY_MAX_SIZE) {
		hoverSlotNum = _slotNum;
		
		var _slot = ds_list_find_value(inventory, _slotNum);
		
		if (_slot ?? undefined) {
			_slot = ds_list_find_value(inventory, 0); 
		} 
		
		/*
		if (isSelected && is_struct(_slot)) {
			
			var _itemID = _slot.itemID;
			var _itemData = global.items[_itemID];
			
			var _isCompatible = (self.forBattleUse || !_itemData.forBattleUse);
			
			var _effectMethod = _itemData.Effect;
			
			if (_isCompatible && is_method(_effectMethod)) {
				var _used = _effectMethod(oPlayer);
			
				if (_used) {
					inventory_deplete_slot(inventory, _slotNum, 1);
					
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