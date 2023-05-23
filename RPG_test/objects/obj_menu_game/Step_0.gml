up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);



op_length = array_length(sprites);

scr_changePos(DEFAULT);


if(accept_key) && global.selectedMenu == obj_menu_game{
	switch(pos){
				//inventario
		case 0: global.selectedMenu = obj_menu_inventory;
				instance_create_depth(0, 0, 3, obj_menu_inventory);
				break;
				
				// guardar
		case 1: 
				break;
		
				// menú
		case 2: global.selectedMenu = obj_question;
				instance_create_depth(0, 0, 3, obj_question);
				break;
		


	}
}