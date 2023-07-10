function scr_check_test_flag(){
	if(ds_list_contains(global.roomItemsPicked, item_test)){
		global.flags[? HAS_PICKED_ITEM_TEST] = true;	
	}	
}

function scr_init_flags(){
	global.flags[? HAS_PICKED_ITEM_TEST] = false;
	item_test = noone;	
}

function scr_test_flag(){
	if(global.flags[? HAS_PICKED_ITEM_TEST] == false && (room == rm_start)){
		item_test = instance_create_depth(150, 150, 0, obj_basic_bow);
	}
}

function scr_start_pos_flag(){
		
}

#macro HAS_PICKED_ITEM_TEST 0