/// @description 
// Set position based on cell size
x = to_room_coords(to_cell_coords(x)) + CELLSIZE / 2;
y = to_room_coords(to_cell_coords(y)) + CELLSIZE / 2;

mask_index = sEntityMask;

inputX = 0;
inputY = 0;
inputSpace = false;

moveSpeed = 1;

moveX = 0;
moveY = 0;
moveDirection = 0;

moving = false;
targetX = x;
targetY = y;

states = {
	idle : {
		left: sPlayer_Left_Idle,
		right: sPlayer_Right_Idle,
		down: sPlayer_Down_Idle,
		up: sPlayer_Up_Idle
	},
	
	walk : {
		left: sPlayer_Left_Walk,
		right: sPlayer_Right_Walk,
		down: sPlayer_Down_Walk,
		up: sPlayer_Up_Walk
	}
}

state = states.idle;

actions = [];

iconSprite = -1;

SetSprite = function (state) {
	if (moveDirection == 0) sprite_index = state.right;
	else if (moveDirection == 1) sprite_index = state.up;
	else if (moveDirection == 2) sprite_index = state.left;
	else if (moveDirection == 3) sprite_index = state.down;
}

hp = maxHP;

GetHP = function () {
	return hp;
}

GetMaxHP = function () {
	return maxHP;
}

GetAttack = function () {
	return attack;
}

GetDefense = function () {
	return defense;
}

Hurt = function (_attackPower, _attacker) {
	var _attackPowerMul = _attacker.GetAttack() / 100;
	var _defenseMul = GetDefense() / 100;
	var _hpReduce = (_attackPower * _attackPowerMul) / _defenseMul;
	
	hp -= _hpReduce;
}

nextLevelXP = xp_for_next_level(level);
baseLevelXP = 0;

inventory = array_create(INVENTORY_MAX_SIZE, -1);

materials = ds_list_create()
