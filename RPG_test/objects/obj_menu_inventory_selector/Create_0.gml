width = 170;
height = 144;
op_space = 55;
pos = 0;
scrollPos = 0;
inv = noone;

selectedItemType = noone;

spritesInventory = array_create(3);
op_length = 0;

global.selectedMenu = obj_menu_inventory_selector;

ds_list_add(global.menuPile, obj_menu_inventory_selector);