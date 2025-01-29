/// @description 
// AI Path
if (pathNextPoint > 0) {
	var _pointX = path_get_point_x(path, pathNextPoint);
	var _pointY = path_get_point_y(path, pathNextPoint);
	
	if (_pointX == x && _pointY == y) {
		pathNextPoint ++;
		
		if (pathNextPoint >= path_get_number(path)) {
			pathNextPoint = -1;
			
			moving = false;
		}
	}
}