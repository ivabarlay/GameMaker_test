width = 245;
height = 144;
pos = 0;



sprites[INV] = spr_menu_inv;
sprites[SAVE] = spr_menu_save;
sprites[TITLE] = spr_menu_title;

global.selectedMenu = obj_menu_inventory_selector;

ds_list_add(global.menuPile, obj_menu_inventory_selector);