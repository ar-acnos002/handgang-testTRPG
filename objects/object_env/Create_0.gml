/// @description Insert description here
// You can write your code in this editor

objectPlayerAPStat = object_player.playerAPStat
objectPlayerAPLeft = objectPlayerAPStat
playerX = object_player.x
playerY = object_player.y

battleTurn = 1

function subtractPlayerAP(costAP)
{
	objectPlayerAPLeft = objectPlayerAPStat - costAP
}

function nextTurn()
{
	objectPlayerAPLeft = objectPlayerAPStat
	battleTurn++
	playerX = object_player.x
	playerY = object_player.y
}