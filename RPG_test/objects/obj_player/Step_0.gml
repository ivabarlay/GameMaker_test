right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


//go to menu
menu_key = keyboard_check_pressed(vk_enter);

if menu_key && global.selectedMenu == obj_menu_game{
	menuGame = !menuGame;
}

if(menuGame){
	if(!instance_exists(obj_menu_game)){
		instance_create_depth(0, 1, 0, obj_menu_game);	
	}
}


else{
	if(instance_exists(obj_menu_game)){
		instance_destroy(obj_menu_game);
	}
}

if(instance_exists(obj_menu_game)){
	xspd = 0;
	yspd = 0;
}

//set sprite
mask_index = sprite[DOWN];

scr_player_sprite();
	
sprite_index = sprite[face];


//collisions
scr_collision();

//move the player
x += xspd;
y += yspd;



//animate
if xspd == 0 && yspd == 0{
		image_index = 0;
	} 

