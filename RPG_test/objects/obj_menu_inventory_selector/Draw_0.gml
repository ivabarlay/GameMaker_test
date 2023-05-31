var _c = c_white;
draw_sprite_ext(sprite_index, image_index, 75,
				96, (width +offset)/sprite_width,
				 height/sprite_height, 0, _c, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);

scr_drawSpritesInventory(hasSelected);

for(var i = 0; i < 3; i++){
	_c = c_black;
	drawBoxes(i);
	drawButton(spr_menu_return, 2);
	drawButton(spr_menu_details, 1);
	drawButton(spr_menu_equip, 0);
	drawButtonPlayer();
}


if(hasSelected = MENU_SELECT_NAME){
	scr_draw_menu_players();
}
