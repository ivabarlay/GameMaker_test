up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
var accept_key = keyboard_check_pressed(vk_space);



op_length = array_length(sprites);

changePos(obj_menu_game);


if(accept_key){
	switch(pos){
				//inventario
		case 0: break;
				
				// guardar
		case 1: 
				break;
		
				// menú
		case 2: global.selectedMenu = obj_question;
				instance_create_depth(150, 150, 3, obj_question);
				break;
		


	}
}