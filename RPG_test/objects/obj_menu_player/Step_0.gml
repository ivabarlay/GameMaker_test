up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
move_up_key = keyboard_check_pressed(ord("W"));
move_down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);

itemPos = parseItemEnum(selectedItemType)

scr_changePosPlayerOption(obj_menu_player);


if(accept_key && hasSelected == false){
	hasSelected = true;	
}






