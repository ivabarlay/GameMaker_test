function scr_check_test_Flag(){
	if(ds_list_contains(global.roomItemsPicked, itemTest)){
		global.flags[? hasPickedItemTest] = true;	
	}	
}

function scr_init_flags(){
	global.flags[? hasPickedItemTest] = false;
	itemTest = noone;	
}

function scr_test_flag(){
	if(global.flags[? hasPickedItemTest] == false && (room == rm_start)){
		itemTest = instance_create_depth(150, 150, 0, obj_basic_bow);
	}
}