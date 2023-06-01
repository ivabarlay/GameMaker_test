#macro MENU_SELECT_UNEQUIP -1
#macro MENU_SELECT_ITEM 0
#macro MENU_SELECT_OPTION 1
#macro MENU_SELECT_NAME 2



function drawHand(rotation, i){
	draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 105 + offset + op_space * i, 170, 1, 1, rotation, c_white, 1);	
}

function drawButton(sprite, i){
	draw_sprite_stretched(sprite, -bbox_bottom, 92 + offset + op_space*i, 200, 22, 22);
}

function drawBoxes(i){
	var _c = c_black;
	draw_rectangle_color(80 + offset + op_space*i, 230, 125 + offset + op_space*i, 190, _c, _c, _c, _c, false);		
}

function drawButtonPlayer(){
		var _c = c_black;
		draw_rectangle_color(82, 135, 133, 185, _c, _c, _c, _c, false);		
		draw_sprite_ext(spr_menu_unequip, bbox_bottom, 92, 145, 2, 2, 0, c_white, 1);
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
			draw_sprite_stretched(spritesInventory[|i + scrollPos * 3], -bbox_bottom, 90 + offset + op_space*i, 110, 40, 40);
		}
	}
	
	
	if (position > 2) {
		drawHand(rotation, 2);
	}
}	
}

function scr_draw_menu_players(){
	var position = posPlayerOption % 3;
	
	draw_sprite_stretched(sprite_index, -bbox_bottom, 150, 96, 170, 144);
	
	for(var i = 0; i < 6; i++){
		if(i < 3){
			draw_sprite_ext(obj_game.spritesPlayer[i], -bbox_bottom, 190 + 40 * i, 120, 1.5, 1.5, 0, c_white, 1);
		}
		if(i >= 3){
			draw_sprite_ext(obj_game.spritesPlayer[i], -bbox_bottom, 190 + 40 * (i-3), 180, 1.5, 1.5, 0, c_white, 1);
		}
		
		if(posPlayerOption < 3){
			draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 190 + 40 * position, 150, 1, 1, 180, c_white, 1);	
		}
		
		if(posPlayerOption <= 5 && posPlayerOption >= 3){
			draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 190 + 40 * position, 210, 1, 1, 180, c_white, 1);	
		}
	}
}
