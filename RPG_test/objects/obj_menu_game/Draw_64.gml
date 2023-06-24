global.width_diff = (room_width/camera_get_view_width(view_camera[0]));
_w = width * global.width_diff;
global.height_diff = (room_height/camera_get_view_height(view_camera[0]));
_h = height * global.height_diff;

draw_sprite_stretched(sprite_index, image_index, 0, 0, _w, _h);
							
draw_set_font(global.font_main);

for(var i = 0; i < op_length; i++){
	var _c = c_white;
	draw_sprite_ext(sprites[i], image_index,
		x + op_border*global.width_diff, y + op_space * (1 + i*global.height_diff),
		global.width_diff, global.height_diff, 0, _c, 1);
		
	if pos == i {
		draw_sprite_ext(spr_mano, image_index, x + op_border * global.height_diff/2,
			y + 10*2 + op_space * (1 + i * global.height_diff),
			global.width_diff, global.height_diff, 0, _c, 1);
	}
}	
	














