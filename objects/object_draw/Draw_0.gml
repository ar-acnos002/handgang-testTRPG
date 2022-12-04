/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)

draw_text(192, 784, "Player AP left: "+string(object_env.objectPlayerAPLeft)+" Turn: "+string(object_env.battleTurn)+" "+string(object_player.x)+" "+string(object_player.y)+" Player State: "+object_player.playerState)
draw_text(192, 816, "Radius: "+string(object_camera.camDistance)+" Camera Position: "+string(object_camera.camX)+", "+string(object_camera.camY)+", "+string(object_camera.camZ))
draw_text(192, 848, "Angle: "+string(object_camera.camAngle))

//script_draw_grid()