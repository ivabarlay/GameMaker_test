up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
var accept_key = keyboard_check_pressed(vk_space);
scr_changePos(obj_question);

op_length = array_length(option);

if(accept_key) && global.selectedMenu == obj_question{
	switch(pos){
		case 0: ds_list_clear(global.inv);
				ds_list_clear(global.menuPile);
				room_goto(rm_title);
				break;
		case 1:global.selectedMenu = DEFAULT;
				instance_destroy(obj_question);
				break;
		
	}
}