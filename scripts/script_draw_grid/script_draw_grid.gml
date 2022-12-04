// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_draw_grid(){
	
	lineWidth = 2
	
	//draw_set_color(c_green)
	
	for (i = 64; i < room_width; i += 64)
	{
		draw_line_width(i, 0, i, room_height, lineWidth)
	}
	
	for (i = 64; i < room_height; i += 64)
	{
		draw_line_width(0, i, room_width, i, lineWidth)
	}
}