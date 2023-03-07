draw_sprite_ext(sprite_index, image_index, x,
				y, width/sprite_width,
				height/sprite_height, 0, c_white, 1);
				
draw_set_font(global.font_main);
//draw_set_valign(fa_top);
//draw_set_halign(fa_left);
var _c = c_white;
draw_text_transformed_color(x+ 10, y+30, "eey", 1/2, 1/2, 0, _c, _c, _c, _c, 1);
//draw_text_color(x, y+10,"eey", _c, _c, _c, _c, 1);