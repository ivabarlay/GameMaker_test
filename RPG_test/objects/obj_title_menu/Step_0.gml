//get inputs
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);

//store number of options in menu
op_length = array_length(option[menu_level])

//move through the menu

pos += down_key - up_key; 
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

if accept_key{
	var _sml = menu_level;
	switch(menu_level){
		
		//pause menu
		case 0:
		switch(pos){
			//start game
			case 0: room_goto(rm_start);
				break;				
			//settings		
			case 1:	menu_level = 1;
				break;				
			//end game	
			case 2:	game_end()
				break;
		}	
		break;
		//settings menu
		case 1:
		switch(pos){
			//window size
			case 0: menu_level = 2;	
				break;				
			//controls		
			case 1:	
				break;				
			//back
			case 2:	menu_level = 0;
				break;
		}	
		break;	
		//window size menu
		
		case 2:
		switch(pos){
			//640 480
			case 0:
				windowWidth = 640;
				windowHeight = 480;
				break;				
			//1280 720	
			case 1:
				windowWidth = 1280;
				windowHeight = 720;
				break;				
			//1680 1050
			case 2:	
				windowWidth = 1680;
				windowHeight = 1050;
				break;
			//Back
			case 3:
				menu_level = 1;
				break;
		}
		break;
	}
	if _sml != menu_level {pos = 0};
	//store number of options in menu
	op_length = array_length(option[menu_level])
	
	window_set_size(windowWidth, windowHeight);
	window_set_position(display_get_width()/2 -windowWidth/2,
	display_get_height()/2 -windowHeight/2);
}
