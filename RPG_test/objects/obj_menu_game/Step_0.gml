up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
var accept_key = keyboard_check_pressed(vk_space);


pos += down_key - up_key;
op_length = array_length(sprites);

if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

if(accept_key){
	switch(pos){
		case 0: // inventario
		
		case 1: // guardar
		
		case 2: // menú
				room_goto(rm_title)
		


	}
}