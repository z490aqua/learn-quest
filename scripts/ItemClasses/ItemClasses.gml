function Item (_name, _icon) constructor {
	name = _name;
	icon = _icon;
	forBattleUse = false;
	
	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
	
}

/// @desc holds multiple items like a slot but not for ui use
function ItemHolder (_itemID, _numItems)
{
	itemID = _itemID;
	numItems = _numItems;
	
}

function HealingItem (_name, _icon, _healPower) : Item (_name, _icon) constructor {
	healPower = _healPower;
	
	Effect = function (player) {
		// Is the player healable?
		if (player.hp < player.maxHP) {
			player.hp += healPower;
			
			return true;
		}
		
		return false;
	}
}

function AttackIncrease (_name, _icon, _increase, _forBattle) : Item (_name, _icon) constructor {
	increase = _increase;
	forBattleUse = _forBattle;
	
	Effect = function (player) {
		return true;
	}
}

function DefenseIncrease (_name, _icon, _increase, _forBattle) : Item (_name, _icon) constructor {
	increase = _increase;
	forBattleUse = _forBattle;
	
	Effect = function (player) {
		return true;
	}
}

function Material (_name, _icon) constructor {
	name = _name;
	icon = _icon;
	forBattleUse = false;
	
	


	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
}

function LootBag (_name, _icon, _lootTable) constructor {
	name = _name;
	icon = _icon;
	lootTable = _lootTable
	forBattleUse = false;
	
	


	/// @func	Effect
	/// @arg	player
	Effect = function (player) {};
}