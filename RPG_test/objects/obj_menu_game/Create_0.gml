width = 75;
height = 239;
pos = 0;


op_border = 50-23/2;
op_space = 50;
op_length = 0;

sprites[INV] = spr_menu_inv;
sprites[SAVE] = spr_menu_save;
sprites[TITLE] = spr_menu_title;

global.selectedMenu = DEFAULT;

ds_list_add(global.menuPile, obj_menu_game);
