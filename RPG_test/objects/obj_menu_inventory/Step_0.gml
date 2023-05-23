up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);
return_key = keyboard_check_pressed(vk_enter);

scr_changePos(obj_menu_inventory);

if(accept_key) && global.selectedMenu == obj_menu_inventory{
	switch(pos){
		case 0:	instance_create_depth(0, 0, 4, obj_menu_inventory_selector);
				break;
		case 1: show_debug_message(global.inv[? ARMOR_POS][|0]);
				break;
		case 2:	
				break;
	}	
}

if(return_key && global.selectedMenu == obj_menu_inventory){
	global.selectedMenu = obj_menu_game;
	instance_destroy();
}