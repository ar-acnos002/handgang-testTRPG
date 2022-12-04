/// @description Insert description here
// You can write your code in this editor

if (playerState == "rest")
{
	playerState = "move"
	originX = x
	originY = y
	script_tilechange_move(originX, originY)
}

else if (playerState == "move")
{
	playerState = "rest"
	object_env.objectPlayerAPLeft = object_env.objectPlayerAPStat
	x = originX
	y = originY
	script_tilechange_rest(x, y)
}