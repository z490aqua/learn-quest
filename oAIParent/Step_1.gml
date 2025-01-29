/// @description 

event_inherited();

if (moves) {
	if (moveTimer <= 0) {
		var _distance = irandom_range(CELLSIZE, moveRadius);
		var _direction = irandom(360);
	
		var _x = xstart + lengthdir_x(_distance, _direction);
		var _y = ystart + lengthdir_y(_distance, _direction);
	
		moveToPoint(_x, _y);
	
		moveTimer = irandom_range(minMoveTime, maxMoveTime);
	}
	else {
		moveTimer --;
	}
}

if (pathNextPoint > 0) {
	var _pointX = path_get_point_x(path, pathNextPoint);
	var _pointY = path_get_point_y(path, pathNextPoint);
	
	inputX = sign(_pointX - x);
	inputY = sign(_pointY - y);
}
else {
	inputX = 0;
	inputY = 0;
}