width = 170;
height = 144;
op_space = 55;
pos = 0;
posPlayerOption = 0;
hasSelected = false;
inv = noone;

spritesInventory = ds_list_create();
op_length = 0;

global.selectedMenu = obj_menu_player;
ds_list_add(global.menuPile, obj_menu_player);
