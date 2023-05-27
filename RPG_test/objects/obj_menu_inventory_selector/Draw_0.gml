var _c = c_white;
draw_sprite_ext(sprite_index, image_index, 75 ,
				96, width/sprite_width,
				height/sprite_height, 0, _c, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);

if(op_length > 0){
	for(var i = 0; i < 3; i++){
		if(i < op_length){
			draw_sprite_stretched(spritesInventory[i+scrollPos], -bbox_bottom, 90 + op_space*i, 110, 40, 40);	
			draw_text_transformed(80 + op_space*i, 98, inv[|i+scrollPos].name, 1/6, 1/6, 1)
			show_debug_message(pos)
		}
	}
	
	if(pos >= 0 && pos <= 2){
		switch(pos){
			case 0: dibujarMano(0);
					break;
				
			case 1: dibujarMano(1);
					break;
				
			case 2: dibujarMano(2);
					break;
		}
	}
	else if (pos > 2) {
		dibujarMano(2);
	}
}

function dibujarMano(i){
	draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 100 + op_space * i, 170, 1, 1, 180, c_white, 1)	
}





			   