_w = op_border;
_h = op_border;

for(var i = 0; i < op_length; i++){
		_w += sprite_get_width(option[i]) + op_space/5;
		_h = max(sprite_get_height(option[i]) + op_border, _h);
}

_w *= global.width_diff; 
_h *= global.height_diff; 
var _x = obj_menu_game.x + obj_menu_game._w;
var _y = 25*global.height_diff;

draw_sprite_ext(sprite_index, image_index, _x,
				_y, _w/sprite_width,
				_h/sprite_height, 0, c_white, 1);			
				
draw_set_font(global.font_main);

var _c = c_white;
for(var i = 0; i < op_length; i++){
	draw_sprite_ext(option[i], image_index,
		_x + 10 + op_space * i * global.width_diff,
		global.height_diff*(sprite_height + op_border),
		global.width_diff, global.height_diff, 0, _c, 1);
		
	draw_sprite_ext(spr_mano_inventory, image_index,
		_x + op_space * pos * global.width_diff + sprite_width*global.width_diff,
		_y*global.height_diff,
		2, 2, 0, _c, 1)
}


