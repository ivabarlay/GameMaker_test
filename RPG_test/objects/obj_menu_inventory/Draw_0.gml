var _width = op_border;
var _height = op_border;

for(var i = 0; i < op_length; i++){
		_width += sprite_get_width(option[i]) + op_space/5;
		_height = max(sprite_get_height(option[i]) + op_border, _height);
}


draw_sprite_ext(sprite_index, image_index, 75,
				30, _width/sprite_width,
				_height/sprite_height, 0, c_white, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);

for(var i = 0; i < op_length; i++){
		draw_sprite(option[i], image_index, 85 + op_space * i, 20 + op_border);
		draw_sprite(spr_mano_inventory, image_index, 85 + op_space * pos, 20 + op_border - 18);
}

