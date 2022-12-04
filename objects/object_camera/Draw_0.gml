/// @description Insert description here
// You can write your code in this editor


var camera = camera_get_active()

var camOriginX = camX
var camOriginY = camY
var camOriginZ = camZ
camDistance = point_distance_3d(camOriginX, camOriginY, camOriginZ, room_width/2, room_height/2, 0)

if (keyboard_check(ord("D")) == true)
{
	var i = 20
	
	if (camOriginX >= room_width/2 and camOriginY >= room_height/2)
	{
		quarter = 2
	}
	else if (camOriginX >= room_width/2 and camOriginY <= room_height/2)
	{
		quarter = 1
	}
	else if (camOriginX <= room_width/2 and camOriginY <= room_height/2)
	{
		quarter = 4
	}
	else if (camOriginX <= room_width/2 and camOriginY >= room_height/2)
	{
		quarter = 3
	}
	
	if (quarter == 2)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY-i
		
		var xx2 = camOriginX+i
		var yy2 = camOriginY-i
		
		var xx3 = camOriginX+i
		var yy3 = camOriginY
	}
	else if (quarter == 1)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY-i
		
		var xx2 = camOriginX-i
		var yy2 = camOriginY-i
		
		var xx3 = camOriginX-i
		var yy3 = camOriginY
	}
	else if (quarter == 4)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY+i
		
		var xx2 = camOriginX-i
		var yy2 = camOriginY+i
		
		var xx3 = camOriginX-i
		var yy3 = camOriginY
	}
	else if (quarter == 3)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY+i
		
		var xx2 = camOriginX+i
		var yy2 = camOriginY+i
		
		var xx3 = camOriginX+i
		var yy3 = camOriginY
	}
	
	var diff1 = abs(camDistance - point_distance_3d(xx1, yy1, camOriginZ, room_width/2, room_height/2, 0))
	var diff2 = abs(camDistance - point_distance_3d(xx2, yy2, camOriginZ, room_width/2, room_height/2, 0))
	var diff3 = abs(camDistance - point_distance_3d(xx3, yy3, camOriginZ, room_width/2, room_height/2, 0))
	
	var minDiff = min(diff1, diff2, diff3)
	
	if (minDiff == diff1)
	{
		camOriginX = xx1
		camOriginY = yy1
	}
	else if (minDiff == diff2)
	{
		camOriginX = xx2
		camOriginY = yy2
	}
	else if (minDiff == diff3)
	{
		camOriginX = xx3
		camOriginY = yy3
	}
}

else if (keyboard_check(ord("A")) == true)
{
	var i = 20
	
	if (camOriginX >= room_width/2 and camOriginY >= room_height/2)
	{
		quarter = 2
	}
	else if (camOriginX >= room_width/2 and camOriginY <= room_height/2)
	{
		quarter = 1
	}
	else if (camOriginX <= room_width/2 and camOriginY <= room_height/2)
	{
		quarter = 4
	}
	else if (camOriginX <= room_width/2 and camOriginY >= room_height/2)
	{
		quarter = 3
	}
	
	if (quarter == 4)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY-i
		
		var xx2 = camOriginX+i
		var yy2 = camOriginY-i
		
		var xx3 = camOriginX+i
		var yy3 = camOriginY
	}
	else if (quarter == 3)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY-i
		
		var xx2 = camOriginX-i
		var yy2 = camOriginY-i
		
		var xx3 = camOriginX-i
		var yy3 = camOriginY
	}
	else if (quarter == 2)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY+i
		
		var xx2 = camOriginX-i
		var yy2 = camOriginY+i
		
		var xx3 = camOriginX-i
		var yy3 = camOriginY
	}
	else if (quarter == 1)
	{
		var xx1 = camOriginX
		var yy1 = camOriginY+i
		
		var xx2 = camOriginX+i
		var yy2 = camOriginY+i
		
		var xx3 = camOriginX+i
		var yy3 = camOriginY
	}
	
	var diff1 = abs(camDistance - point_distance_3d(xx1, yy1, camOriginZ, room_width/2, room_height/2, 0))
	var diff2 = abs(camDistance - point_distance_3d(xx2, yy2, camOriginZ, room_width/2, room_height/2, 0))
	var diff3 = abs(camDistance - point_distance_3d(xx3, yy3, camOriginZ, room_width/2, room_height/2, 0))
	
	var minDiff = min(diff1, diff2, diff3)
	
	if (minDiff == diff1)
	{
		camOriginX = xx1
		camOriginY = yy1
	}
	else if (minDiff == diff2)
	{
		camOriginX = xx2
		camOriginY = yy2
	}
	else if (minDiff == diff3)
	{
		camOriginX = xx3
		camOriginY = yy3
	}
}

camX = camOriginX
camY = camOriginY
camZ = camOriginZ
camAngle = point_direction(room_width/2, room_height/2, camX, camY)

var camViewMat = matrix_build_lookat(camOriginX, camOriginY, camOriginZ, room_width/2, room_height/2, 0, 0, 0, 1)

var camProjMat = matrix_build_projection_perspective_fov(72.5, room_width/room_height, 1, 2000)

camera_set_view_mat(camera, camViewMat)
camera_set_proj_mat(camera, camProjMat)

camera_apply(camera)