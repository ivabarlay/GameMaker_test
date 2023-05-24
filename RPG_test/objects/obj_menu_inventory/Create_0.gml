op_border = 35;
op_space = 50;
pos = 0;


option[0] = spr_menu_weapon;
option[1] = spr_menu_armor;
option[2] = spr_menu_potion;

op_length = array_length(option);

ds_list_add(global.menuPile, obj_menu_inventory);