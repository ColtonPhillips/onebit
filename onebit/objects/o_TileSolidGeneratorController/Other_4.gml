var lay_id = layer_get_id("SolidTiles");
var map_id = layer_tilemap_get_id(lay_id);
tilemap_height = tilemap_get_height(map_id);
tilemap_width = tilemap_get_width(map_id);
global.tile_width = 8; 
tile_width = global.tile_width;
global.tile_height = 8; 
tile_height = global.tile_height;

var i;
for (i = 0; i < tilemap_width; i += 1) {
	var j;
	for (j = 0; j < tilemap_height; j += 1) {
		var data = tilemap_get(map_id, i, j);
		if (data == 1) {		
			instance_create_layer(i * tile_width, j * tile_height, "Instances", o_SolidRectangle);
		}
		if (data == 2) {		
			var inst = instance_create_layer(i * tile_width, j * tile_height, "Instances", o_SolidTriangle);
			inst.image_xscale = -1; inst.x += global.tile_width;
		}
		if (data == 3) {		
			instance_create_layer(i * tile_width, j * tile_height, "Instances", o_SolidTriangle);
		}
	}
}