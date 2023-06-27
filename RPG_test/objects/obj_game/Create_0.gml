startPlayerPosition = noone;
spritesPlayer = undefined;

global.selectedMenu = obj_menu_game;
global.menuPile = ds_list_create();
global.roomItemsPicked = ds_list_create();
global.flags = ds_map_create();
global.unitsInstances = ds_list_create();

//Init players' sprites
for(var i = 0; i < 6; i++) {
	spritesPlayer[i] = spr_placeholder_down;
}

//Init inventory
global.inv = ds_map_create();
for(var i = 0; i < 3; i++){
	global.inv[? i] = ds_list_create();
}

//Init equipped items
global.itemsEquiped = ds_map_create();
scr_init_item_equipped();

//Flags
scr_init_flags();

//Init skills
global.playerSkills = ds_map_create();
for(var i = 0; i < 6; i++){
	for(var j = 0; j < 6; j++){
		global.playerSkills[? i] = ds_list_create();
	}
}

randomize();

ally1_stats = undefined;
ally2_stats = undefined;
enemy1_stats = undefined;
enemy2_stats = undefined;



