up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);

op_length = array_length(option);


scr_changePos(obj_menu_inventory);

if(accept_key) && global.selectedMenu == obj_menu_inventory{
	switch(pos){
		case 0:	instance_create_depth(0, 0, 4, obj_menu_inventory_selector);
				obj_menu_inventory_selector.selectedItemType = itemType.WEAPON;
				break;
		case 1: instance_create_depth(0, 0, 4, obj_menu_inventory_selector);
				obj_menu_inventory_selector.selectedItemType = itemType.ARMOR;
				break;
		case 2:	
				break;
	}	
}

