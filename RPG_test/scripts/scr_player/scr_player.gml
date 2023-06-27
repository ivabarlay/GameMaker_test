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



	if(instance_exists(obj_menu_game) || instance_exists(obj_npc_dialogue)){
		xspd = 0;
		yspd = 0;
		}	
}

function scr_pickUp(){
	r = 15;
	var items_list = ds_list_create();

	if (collision_circle_list(x, y, r, obj_item, false, false, items_list, true)) != 0
	&& interact_key{
		itemPicked = items_list[|0];
		if(itemPicked.pickUpable){
			ds_list_add(global.inv[? parseItemEnum(itemPicked.item.itemKind)], itemPicked.item);
			ds_list_add(global.roomItemsPicked, itemPicked);
			instance_destroy(itemPicked);
		}
		ds_list_clear(items_list);
	}
	
}

function scr_interact_npc(){
	var r = 15;
	var npc_list = ds_list_create();
	
	if ((collision_circle_list(x, y, r, obj_npc, false, false, npc_list, true)) != 0 
	&& interact_key && !instance_exists(obj_npc_dialogue)){
		var npcInteracted = npc_list[|0];
		instance_create_depth(150, 170, -1, obj_npc_dialogue);
		ds_list_add(global.menuPile, obj_npc_dialogue);
		obj_npc_dialogue.name = npcInteracted.name;
		obj_npc_dialogue.messages = npcInteracted.messages;
		obj_npc_dialogue.message_length = string_length(npcInteracted.messages[0]);
		obj_npc_dialogue.message_end = array_length(npcInteracted.messages) - 1;
		obj_npc_dialogue.final_script = npcInteracted.final_script;
		
		ds_list_clear(npc_list);
	}
	
	
}











