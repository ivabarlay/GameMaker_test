up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
var accept_key = keyboard_check_pressed(vk_space);
scr_changePos(obj_question);

op_length = array_length(option);

if(accept_key) && global.selectedMenu == obj_question{
	switch(pos){
		case 0: clearGlobalVariables();
				break;
				
		case 1:global.selectedMenu = DEFAULT;
				instance_destroy(obj_question);
				break;
		
	}
}

function clearGlobalVariables(){
	for(var i = 0; i < 3; i++){
		ds_list_clear(global.inv[? i]);
	}
	ds_list_clear(global.menuPile);
	for(var i = 0; i < 6; i++){
		for(var j = 0; j < 2; j++){
			global.itemsEquiped[? i] = ds_map_create();
			global.itemsEquiped[? i][? j] = noone;
		}
	}
	
	for(var i = 0; i < ds_map_size(global.flags); i++){
		global.flags[? i] = false;		
	}
	
	
	room_goto(rm_title);	
}







