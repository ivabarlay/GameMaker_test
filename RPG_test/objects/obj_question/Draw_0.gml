
draw_sprite_ext(sprite_index, image_index, 100,
				100, width/sprite_width,
				height/sprite_height, 0, c_white, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);


draw_text_transformed(105, 110, mensaje_menu,
							1/4.75, 1/4.75, 0);
for(var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i {_c = c_yellow;}
	draw_text_transformed_color(130 + op_border * i, 130, option[i],
							1/4, 1/4, 0, _c, _c, _c, _c, 1);
}
	

