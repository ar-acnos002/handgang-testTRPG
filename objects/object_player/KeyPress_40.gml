/// @description Insert description here
// You can write your code in this editor

var newX = 0
var newY = 0

if (object_camera.camAngle >= 270 and object_camera.camAngle < 315)
{
	newY = y + 64
	newX = x
}
else if (object_camera.camAngle >= 315 and object_camera.camAngle < 359)
{
	newY = y
	newX = x + 64
}
else if (object_camera.camAngle >= 0 and object_camera.camAngle < 45)
{
	newY = y
	newX = x + 64
}
else if (object_camera.camAngle >= 45 and object_camera.camAngle < 90)
{
	newY = y - 64
	newX = x
}
else if (object_camera.camAngle >= 90 and object_camera.camAngle < 135)
{
	newY = y - 64
	newX = x
}
else if (object_camera.camAngle >= 135 and object_camera.camAngle < 180)
{
	newY = y
	newX = x - 64
}
else if (object_camera.camAngle >= 180 and object_camera.camAngle < 225)
{
	newY = y
	newX = x - 64
}
else if (object_camera.camAngle >= 225 and object_camera.camAngle < 270)
{
	newY = y + 64
	newX = x
}

playerMove(newX, newY)