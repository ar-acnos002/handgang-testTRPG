/// @description Insert description here
// You can write your code in this editor

if (playerState == "move")
{
	playerState = "rest"
	object_env.nextTurn()
	script_tilechange_rest(originX, originY)
	playerOriginX = x
	playerOriginY = y
}