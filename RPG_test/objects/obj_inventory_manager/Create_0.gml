global.inv = ds_map_create();

for(var i = 0; i < 3; i++){
	global.inv[? i] = ds_list_create();
}

global.itemsEquiped = ds_map_create();

scr_init_item_equipped();