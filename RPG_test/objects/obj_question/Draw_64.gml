var xscale = global.width_diff;
var yscale = global.height_diff;

draw_sprite_ext(sprite_index, image_index, 180,
				100, width/sprite_width*xscale,
				height/sprite_height*yscale, 0, c_white, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);

draw_text_transformed(185, 110, mensaje_menu,
							1/3*xscale, 1/3*yscale, 0);
							
for(var i = 0; i < op_length; i++){
	var _c = c_white;
	if pos == i {_c = c_yellow;}
	draw_text_transformed_color(250 + op_border * i, 140, option[i],
							1/2*xscale, 1/2*yscale, 0, _c, _c, _c, _c, 1);
}
	

