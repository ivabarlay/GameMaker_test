up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);
return_key = keyboard_check_pressed(vk_enter);

scr_changePos(obj_menu_inventory);

if(accept_key){
	switch(pos){
		case 0:	
				break;
		case 1: 
				break;
		case 2:	
				break;
		case 3: 
				break;
	}	
}

if(return_key){
	instance_destroy();
	global.selectedMenu = obj_menu_game;
}