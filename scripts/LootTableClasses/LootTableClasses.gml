// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @function Drop
/// @desc - Creates a drop struct for loot tables
/// @param {Real} _itemID - Id of item to drop using ITEM enum
/// @param {Real} _minDrop - Minimum amount of the item to drop inclusive
/// @param {Real} _maxDrop - Maximum amount of the item to drop inclusive
/// @param {Real} _percentDrop - Percentage chance between 0 and 1 to drop item (Default 1)
/// @returns {Struct} Drop
function Drop(_itemID, _minDrop, _maxDrop, _percentDrop = 1) constructor
{
	itemID = _itemID
	minDrop = _minDrop
	maxDrop = _maxDrop
	percentDrop = _percentDrop
	
	
	RunDrop = function()
	{
		if (random_boolean(percentDrop))
		{
			var numDropped = irandom_range(minDrop, maxDrop)
			
			return new ItemHolder(itemID, numDropped)
		}
		return -1; // if it decides not to drop
	}
	
	
}


/// @function LootTable
/// @desc - Creates a loot table struct
/// @param {Array[struct]} _drops - drops structs that makeup a single loot table
function LootTable(_drops) constructor
{
	drops = _drops
	
	GiveItems = function(_player)
	{
		show_debug_message("Player " + string(_player.id) + " picked up a loot bag")
		for (var i = 0; i < array_length(drops); i++)
		{
			var drop = drops[i].RunDrop()
			if (drop != -1)// if RunDrop returned a valid drop // Would only return -1 if it rolled false for percent dropped
			{
				
				GiveMaterial(_player, drop)
			}
			
			
		}
	}
}

function GiveItemsArr(_player, _drops)
	{
		
		for (var i = 0; i < array_length(_drops); i++)
		{
			var drop = _drops[i].RunDrop()
			if (drop != -1)// if RunDrop returned a valid drop // Would only return -1 if it rolled false for percent dropped
			{
				
				GiveMaterial(_player, drop)
			}
			
			
		}
	}

/// @ param {Struct} _drop - Items()
function GiveMaterial(_player, _itemHolder)
{
	inventory_add_material(_player.materials, _itemHolder.itemID, _itemHolder.numItems);
}