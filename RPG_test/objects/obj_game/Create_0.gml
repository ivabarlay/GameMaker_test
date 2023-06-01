startPlayerPosition = noone;
global.selectedMenu = obj_menu_game;
global.menuPile = ds_list_create();
global.roomItemsPicked = ds_list_create();
global.flags = ds_map_create();

for(var i = 0; i < 6; i++) {
	spritesPlayer[i] = spr_placeholder_down;
}

global.inv = ds_map_create();


for(var i = 0; i < 3; i++){
	global.inv[? i] = ds_list_create();
}

global.itemsEquiped = ds_map_create();

scr_init_item_equipped();

//Flags
scr_init_flags();