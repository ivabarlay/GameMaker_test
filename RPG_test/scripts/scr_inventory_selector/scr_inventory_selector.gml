#macro MENU_SELECT_UNEQUIP -1
#macro MENU_SELECT_ITEM 0
#macro MENU_SELECT_OPTION 1
#macro MENU_SELECT_NAME 2



function drawHand(rotation, i){
	draw_sprite_ext(spr_mano_inventory, -bbox_bottom,
		_x + offset + op_space * i,
		_y + 70*global.height_diff, global.width_diff, global.height_diff, rotation, c_white, 1);	
}

function drawButton(sprite, i){
	draw_sprite_stretched(sprite, -bbox_bottom, 85 + 20*global.width_diff  + offset + op_space*i,
		170 + 110*global.height_diff, 22*2, 22*2);
}

function drawButtonPlayer(){
		draw_sprite_ext(spr_menu_unequip,
			bbox_bottom, _x + 10*global.width_diff, _y + 40*global.height_diff,
			2*global.width_diff, 2*global.height_diff, 0, c_white, 1);
}

function scr_scroll_inventory(){
	if(global.selectedMenu == obj_menu_inventory_selector){
		if(down_key && (pos % 3 == 2) && (pos + 1 < op_length)){
			scrollPos++;
		}
		
		if(up_key && (pos % 3 == 0)){
			scrollPos--;
		}
		
		if(scrollPos < 0){
			scrollPos = 0;
		}
		
		
	}
}

function scr_changePosInventory(obj){
	if(global.selectedMenu == obj){
		pos += down_key - up_key; 
	}
	if pos >= op_length {pos = op_length - 1};
	if pos < 0 {pos = 0};

}

function scr_changePosOption(obj){
	if(global.selectedMenu == obj){
		posOption += down_key - up_key; 
	}
	if posOption >= 3 {posOption = 0};
	if posOption < 0 {posOption = 2};

}

function scr_changePosPlayerOption(obj){
	if((global.selectedMenu == obj)){
		posPlayerOption += down_key - up_key; 
		if(posPlayerOption < 3){
			posPlayerOption += move_down_key*3;
		}
		if(posPlayerOption >= 3){
			posPlayerOption -= move_up_key*3;
		}
	}
	if posPlayerOption >= 6 {posPlayerOption = 5};
	if posPlayerOption < 0 {posPlayerOption = 0};

}

function scr_drawSpritesInventory(hasSelected){
	var rotation = 180;
	var position = undefined;
	
	if(hasSelected == MENU_SELECT_OPTION){
		rotation = 360;	
		position = posOption;
	}
	
	else if(hasSelected == MENU_SELECT_ITEM){
		position = pos % 3; 	
	}
	
	if(position >= 0 && position <= 2){
		switch(position){
			case 0: drawHand(rotation, 0);
					break;
				
			case 1: drawHand(rotation, 1);
					break;
				
			case 2: drawHand(rotation, 2);
					break;
		}
	}
	
	if(op_length > 0){
		for(var i = 0; i < 3; i++){
			if(i < op_length - scrollPos * 3){
				draw_sprite_stretched(spritesInventory[|i + scrollPos * 3],
					-bbox_bottom, 60*global.width_diff + offset + op_space*i,
					110*global.height_diff, 40*global.width_diff, 40*global.height_diff);
			}
		}
	
	
		if (position > 2) {
			drawHand(rotation, 2);
		}
	}	
}

function scr_draw_menu_players(){
	var position = posPlayerOption % 3;
	var xscale = global.width_diff;
	var yscale = global.height_diff;
	var _sprites = global.spritesPlayer;
	
	draw_sprite_stretched(spr_menu_game, image_index, 150, 96, 140*xscale, 135*yscale);
	
	for(var i = 0; i < 6; i++){
		var current_sprite = _sprites[i];
		if(i < 3 && current_sprite != undefined){
			draw_sprite_ext(_sprites[i],
				image_index, 210 + 40 * i*xscale,
				80*yscale, 1.5*xscale, 1.5*yscale, 0, c_white, 1);
		}
		else if(i >= 3 && current_sprite != undefined){
			draw_sprite_ext(_sprites[i],
				image_index, 210 + 40 * (i-3)*xscale,
				140*yscale, 1.5*xscale, 1.5*yscale, 0, c_white, 1);
		}
		
		if(posPlayerOption < 3){
			draw_sprite_ext(spr_mano_inventory,
				image_index, 210 + 80 * position, 210, xscale, yscale, 180, c_white, 1);	
		}
		
		if(posPlayerOption <= 5 && posPlayerOption >= 3){
			draw_sprite_ext(spr_mano_inventory,
				image_index, 210 + 80 * position, 340, xscale, yscale, 180, c_white, 1);	
		}
	}
}
