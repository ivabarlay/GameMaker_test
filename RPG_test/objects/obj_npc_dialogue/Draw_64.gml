var _c = c_white;

draw_sprite_ext(sprite_index, image_index, 0,
		240 + 70, width/sprite_width, height/sprite_height , 0, _c, 1);
		
draw_text_transformed(10, 330, name + ": ", 0.75, 0.75, 0); 
draw_text_transformed(200, 330, dialogue, 0.8, 0.8, 0)