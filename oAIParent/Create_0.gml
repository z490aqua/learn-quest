/// @description 

event_inherited();

path = path_add();
pathNextPoint = 0;

moveDirection = faceDirection;

moveTimer = 0;
minMoveTime = 100;
maxMoveTime = 200;

moveToPoint = function (_x, _y) {
	_x = floor(_x / CELLSIZE) * CELLSIZE;
	_y = floor(_y / CELLSIZE) * CELLSIZE;
	_x += CELLSIZE / 2;
	_y += CELLSIZE / 2;
	
	var _found = mp_grid_path(global.AI_MPGrid, path, x, y, _x, _y, false);
	
	if (_found) {
		pathNextPoint = 1;
	}
}