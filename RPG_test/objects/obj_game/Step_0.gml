pos = ds_list_size(global.menuPile) - 1;
var _return_key = keyboard_check_pressed(vk_enter);
var _interact_key = keyboard_check_pressed(ord("E"));

if(instance_exists(obj_player) && _return_key){
	if(pos + 1 == 0){
		instance_create_depth(0, 0, -bbox_bottom, obj_menu_game);
	}
	else{
		global.selectedMenu = global.menuPile[|pos -1];
		instance_destroy(global.menuPile[|pos]);
		ds_list_delete(global.menuPile, pos);
	}
}

//Flag detector
scr_check_test_flag();