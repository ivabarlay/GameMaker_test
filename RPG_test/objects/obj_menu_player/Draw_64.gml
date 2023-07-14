var _c = c_white;
draw_set_font(global.font_main);
scr_draw_menu_players();
//draw_text_transformed_color(200, 220, "DESEQUIPAR", 1/4, 1/4, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);

if(hasSelected && (global.itemsEquiped[? posPlayerOption][? itemPos] != undefined)){
	draw_sprite_ext(sprite_index, image_index, 75, 96, (width)/sprite_width,
				 height/sprite_height, 0, _c, 1);
				 
	scr_unequip_item(posPlayerOption, selectedItemType);
	hasSelected = false;
}
	
	

	
	