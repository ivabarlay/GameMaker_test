function drawHand(rotation, i){
	draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 100 + op_space * i, 170, 1, 1, rotation, c_white, 1);	
}

function drawButton(sprite, i){
	draw_sprite_stretched(sprite, -bbox_bottom, 92 + op_space*i, 200, 22, 22);
}

function drawBoxes(i){
	var _c = #171A2C;
	draw_rectangle_color(80 + op_space*i, 230, 125 + op_space*i, 190, _c, _c, _c, _c, false);		
}

function scr_scroll_inventory(){
	if(global.selectedMenu == obj_menu_inventory_selector){
		if(op_length) > 3 && scrollPos >= 0{
			scrollPos += down_key - up_key; 
		}
	}
	if scrollPos > (op_length - 3) {scrollPos = op_length - 3}; 
	if scrollPos < 0 || pos < 2 {scrollPos = 0};

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

function scr_drawHandPos(hasSelected){
	var rotation = 180;
	var position = pos;
	
	if(hasSelected){
		rotation = 360;	
		position = posOption;
	}
	
	if(op_length > 0){
	for(var i = 0; i < 3; i++){
		if(i < op_length){
			draw_sprite_stretched(spritesInventory[i+scrollPos], -bbox_bottom, 90 + op_space*i, 110, 40, 40);	
		}
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
	else if (position > 2) {
		drawHand(rotation, 2);
	}
}	
}