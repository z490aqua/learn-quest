/// @description 
if (global.paused) {
	SetSprite(states.idle);
	exit;
}

switch (state) {
	case states.idle:
	case states.walk:
		if (inputX != 0 || inputY != 0) {
			if (!moving) {
				
				/* 
				// Movement cancelling
				if (inputX != 0)
					inputY = 0;
				*/
				var _cellX = to_cell_coords(x);
				var _cellY = to_cell_coords(y);
				
				var _newCellX = _cellX + sign(inputX);
				var _newCellY = _cellY + sign(inputY);
		
				var _col = collision_at_cell(_newCellX, _newCellY);
		
				if (!_col) {
					targetX = to_room_coords(_newCellX) + CELLSIZE / 2;
					targetY = to_room_coords(_newCellY) + CELLSIZE / 2;
			
					moving = true;
				}
				
				else {
					moveDirection = get_4_directional(point_direction(0, 0, inputX, inputY));
				}
			}
		}

		if (moving) {
			state_set(states.walk);
			
			if (point_distance(x, y, targetX, targetY) <= moveSpeed) {
				moveX = 0;
				moveY = 0;
				
				x = targetX;
				y = targetY;
				
				moving = false;
			}
			else {
				moveX = sign(targetX - x) * moveSpeed;
				moveY = sign(targetY - y) * moveSpeed;
			}
		}
		else {
			state_set(states.idle);
		}
	break;
}

x += moveX;
y += moveY;

var _dir = get_4_directional(point_direction(0, 0, moveX, moveY));

if (moveX != 0 || moveY != 0) {
	moveDirection = _dir;
}

SetSprite(state);