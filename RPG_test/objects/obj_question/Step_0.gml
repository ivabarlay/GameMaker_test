up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
var accept_key = keyboard_check_pressed(vk_space);
changePos(obj_question);

op_length = array_length(option);

if(accept_key){
	switch(pos){
		case 0: room_goto(rm_title);
				break;
		case 1:global.selectedMenu = obj_menu_game;
				instance_destroy(obj_question);
				break;
		
	}
}