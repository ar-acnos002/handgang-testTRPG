/// @description Insert description here
// You can write your code in this editor
z = depth
depth = 0

playerAPStat = 3

playerState = "rest"

playerOriginX = x
playerOriginY = y

function checkOutOfBounds(newX, newY)
{
	//if ((newX >= 0 and newX < room_width) and (newY >= 0 and newY < room_height))
	if ((newX >= (64*2) and newX < room_width-(64*2)) and (newY >= (64*3) and newY < room_height-(64*3)))
	{
		return true
	}
	else
	{
		return false
	}
}

function checkOutofAPRange(newX, newY)
{
	if (newX > playerOriginX)
	{
		diffX = newX - playerOriginX
	}
	else
	{
		diffX = playerOriginX - newX
	}
	
	if (newY > playerOriginY)
	{
		diffY = newY - playerOriginY
	}
	else
	{
		diffY = playerOriginY - newY
	}
	
	diffX /= 64
	diffY /= 64
	
	if (diffX+diffY > object_env.objectPlayerAPStat)
	{
		return false
	}
	else
	{
		return true
	}
}

function getAPCost(newX, newY)
{
	if (newX > playerOriginX)
	{
		diffX = newX - playerOriginX
	}
	else
	{
		diffX = playerOriginX - newX
	}
	
	if (newY > playerOriginY)
	{
		diffY = newY - playerOriginY
	}
	else
	{
		diffY = playerOriginY - newY
	}
	
	diffX /= 64
	diffY /= 64
	
	apCost = diffX+diffY
	
	return apCost
}

function playerMove(newX, newY)
{
	if (checkOutOfBounds(newX, newY) and playerState == "move" and checkOutofAPRange(newX, newY))
	{
		x = newX
		y = newY
		costAP = getAPCost(newX, newY)
		object_env.subtractPlayerAP(costAP)
	}
}