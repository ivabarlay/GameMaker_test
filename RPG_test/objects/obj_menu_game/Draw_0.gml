var _c = c_white;
draw_sprite_ext(sprite_index, image_index, x,
				y, width/sprite_width,
				height/sprite_height, 0, _c, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);


for(var i = 0; i < op_length; i++){
		draw_sprite(sprites[i], image_index, x + op_border, y + op_space * (1 + i));
		
		if pos == i {draw_sprite(spr_mano, image_index, x + op_border/2, y + 10 + op_space * (1 + i));}
	}	
	














