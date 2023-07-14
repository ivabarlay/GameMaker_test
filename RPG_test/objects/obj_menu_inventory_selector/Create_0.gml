width = 170;
height = 144;
op_space = 100;
pos = 0;
posOption = 0;
posPlayerOption = 0;
scrollPos = 0;
inv = noone;
hasSelected = 0;
offset = 170;

selectedItemType = noone;

spritesInventory = ds_list_create();
op_length = 0;

global.selectedMenu = obj_menu_inventory_selector;
ds_list_add(global.menuPile, obj_menu_inventory_selector);


#macro EQUIP 0
#macro DETAILS 1
#macro RETURN 2

depth = -1;