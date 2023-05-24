pos = ds_list_size(global.menuPile) - 1;

if((keyboard_check_pressed(vk_enter)) && ds_list_size(global.menuPile) > 0)
		&& global.menuPile[| ds_list_size(global.menuPile) - 2]  != noone{
			
	
	
	global.selectedMenu = global.menuPile[|pos - 1];
	instance_destroy(global.menuPile[| pos]);
	ds_list_delete(global.menuPile, pos);
}

if(pos + 1 == 0 && keyboard_check_pressed(vk_enter)){
			instance_create_depth(0, 1, 0, obj_menu_game);	
		}