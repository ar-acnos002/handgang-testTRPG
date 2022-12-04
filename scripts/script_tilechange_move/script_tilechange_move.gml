// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function script_tilechange_move(argument0, argument1){
	
	var layerId = layer_get_id("Tiles_Arena")
	var mapId = layer_tilemap_get_id(layerId)

	for (i = 1; i <= object_env.objectPlayerAPStat; i++)
	{
		orig_vertexX = argument0
		orig_vertexY = argument1
	
		var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
		var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
		tilemap_set(mapId, 3, mx, my)
	
		orig_vertexX = argument0
		orig_vertexY = argument1-(64*i)
		
		if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
		{
			var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
			var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
			tilemap_set(mapId, 2, mx, my)
		}
	
		orig_vertexX = argument0
		orig_vertexY = argument1+(64*i)
		
		if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
		{
			var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
			var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
			tilemap_set(mapId, 2, mx, my)
		}
	
		orig_vertexX = argument0-(64*i)
		orig_vertexY = argument1
		
		if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
		{
			var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
			var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
			tilemap_set(mapId, 2, mx, my)
		}
	
		orig_vertexX = argument0+(64*i)
		orig_vertexY = argument1
		
		if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
		{
			var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
			var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
			tilemap_set(mapId, 2, mx, my)
		}
	}

	for (i = 1; i <= object_env.objectPlayerAPStat; i++)
	{
		for (j = object_env.objectPlayerAPStat-i; j >= 1; j--)
		{
			orig_vertexX = argument0+(64*i)
			orig_vertexY = argument1-(64*j)
		
			if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
			{
				var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
				var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
				tilemap_set(mapId, 2, mx, my)
			}
		}
	}

	for (i = 1; i <= object_env.objectPlayerAPStat; i++)
	{
		for (j = object_env.objectPlayerAPStat-i; j >= 1; j--)
		{
			orig_vertexX = argument0+(64*i)
			orig_vertexY = argument1+(64*j)
		
			if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
			{
				var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
				var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
				tilemap_set(mapId, 2, mx, my)
			}
		}
	}

	for (i = 1; i <= object_env.objectPlayerAPStat; i++)
	{
		for (j = object_env.objectPlayerAPStat-i; j >= 1; j--)
		{
			orig_vertexX = argument0-(64*i)
			orig_vertexY = argument1-(64*j)
		
			if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
			{
				var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
				var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
				tilemap_set(mapId, 2, mx, my)
			}
		}
	}

	for (i = 1; i <= object_env.objectPlayerAPStat; i++)
	{
		for (j = object_env.objectPlayerAPStat-i; j >= 1; j--)
		{
			orig_vertexX = argument0-(64*i)
			orig_vertexY = argument1+(64*j)
		
			if (object_player.checkOutOfBounds(orig_vertexX, orig_vertexY))
			{
				var mx = tilemap_get_cell_x_at_pixel(mapId, orig_vertexX, orig_vertexY)
				var my = tilemap_get_cell_y_at_pixel(mapId, orig_vertexX, orig_vertexY)
				tilemap_set(mapId, 2, mx, my)
			}
		}
	}

}