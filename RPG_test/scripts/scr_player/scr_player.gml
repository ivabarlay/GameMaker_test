// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision() {
	
	if place_meeting(x + xspd, y, obj_solid) {
		while(!place_meeting(x + sign(xspd), y, obj_solid)){
			x += sign(xspd);
		}
		xspd = 0;
	}
	
	if place_meeting(x, y + yspd, obj_solid){
		while(!place_meeting(x , y + sign(yspd), obj_solid)){
			y += sign(yspd);
		}
		yspd = 0;
	}
	
	if place_meeting(x + xspd, y, obj_gate) {
		while(!place_meeting(x + sign(xspd), y, obj_gate)){
			x += sign(xspd);
		}
		room_goto_next();
	}
	
	if place_meeting(x, y + yspd, obj_gate){
		while(!place_meeting(x , y + sign(yspd), obj_gate)){
			y += sign(yspd);
		}
		room_goto_next();
	}
	
	if place_meeting(x + xspd, y, obj_gate_exit) {
		while(!place_meeting(x + sign(xspd), y, obj_gate_exit)){
			x += sign(xspd);
		}
		room_goto_previous();
	}
	
	if place_meeting(x, y + yspd, obj_gate_exit){
		while(!place_meeting(x , y + sign(yspd), obj_gate_exit)){
			y += sign(yspd);
		}
		room_goto_previous();
	}
	
	
}

function scr_player_sprite(){
	mask_index = sprite[DOWN];
	sprite_index = sprite[face];

	if (yspd == 0) {  
		if xspd > 0 {face = RIGHT}
		if xspd < 0 {face = LEFT}
		}
	if xspd > 0	&& face = LEFT {face = RIGHT};	
	if xspd < 0	&& face = RIGHT {face = LEFT};	

	if xspd == 0{  
		if yspd > 0 {face = DOWN};
		if yspd < 0 {face = UP};

	if yspd > 0	&& face = UP {face = DOWN};	
	if xspd < 0	&& face = DOWN {face = UP};
	}
	
	if xspd == 0 && yspd == 0{
		image_index = 0;
	} 
}



function scr_menuGame(){
	menu_key = keyboard_check_pressed(vk_enter);
	if menu_key && global.selectedMenu == obj_menu_game{
		menuGame = !menuGame;
		//show_debug_message(global.inv[|0])
		//show_debug_message(global.inv[|1])
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
}

function scr_pickUp(){
	
	function chooseItemType(){
		switch(itemPicked.item.itemKind){
			case itemType.WEAPON: return WEAPON_POS;
			case itemType.ARMOR: return ARMOR_POS;
			//case itemType.POTION: return obj.weapon;
		}
	}
	
	r = 12;
	var items_list = ds_list_create();

	if (collision_circle_list(x, y, r, obj_item, false, false, items_list, true)) != 0 && interact_key{
		itemPicked = items_list[|0];
		ds_list_add(global.inv[? chooseItemType()], itemPicked.item);
		
		instance_destroy(itemPicked)
		
		ds_list_clear(items_list);
	}
	
}