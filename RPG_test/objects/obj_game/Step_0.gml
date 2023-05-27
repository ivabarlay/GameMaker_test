pos = ds_list_size(global.menuPile) - 1;
return_key = keyboard_check_pressed(vk_enter);

if(instance_exists(obj_player) && return_key){
	if(pos + 1 == 0){
		instance_create_depth(0, 0, -bbox_bottom, obj_menu_game);
		show_debug_message("hijoputa")
	}
	
	else{
		global.selectedMenu = global.menuPile[|pos -1];
		instance_destroy(global.menuPile[|pos]);
		ds_list_delete(global.menuPile, pos);
	}
}