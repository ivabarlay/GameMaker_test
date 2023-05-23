up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);
return_key = keyboard_check_pressed(vk_enter);

scr_changePos(obj_menu_inventory);

if(accept_key) && global.selectedMenu == obj_menu_inventory{
	switch(pos){
		case 0:	show_debug_message(global.inv[? WEAPON_POS][|0]);
				show_debug_message(global.inv[? WEAPON_POS][|1]);
				break;
		case 1: show_debug_message(global.inv[? ARMOR_POS][|0]);
				break;
		case 2:	
				break;
	}	
}

if(return_key){
	instance_destroy();
	global.selectedMenu = obj_menu_game;
}