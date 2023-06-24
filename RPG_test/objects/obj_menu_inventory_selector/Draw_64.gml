var _c = c_white;
_x = obj_menu_game.x + obj_menu_game._w;
_y = 96*global.height_diff;

draw_sprite_ext(sprite_index, image_index, _x,
				_y, global.height_diff*(width + offset)*0.72/sprite_width,
				 (global.width_diff*height)/sprite_height, 0, _c, 1);
					
				
draw_set_font(global.font_main);

for(var i = 0; i < 3; i++){
	_c = c_black;
	drawButton(spr_menu_return, 2);
	drawButton(spr_menu_details, 1);
	drawButton(spr_menu_equip, 0);
}
drawButtonPlayer();

scr_drawSpritesInventory(hasSelected);


if(hasSelected == MENU_SELECT_NAME){
	scr_draw_menu_players();
}

else if(hasSelected == MENU_SELECT_UNEQUIP){
	draw_sprite_ext(spr_mano_inventory, image_index,
		50*global.width_diff + offset,
		160*global.height_diff, global.width_diff, global.height_diff, -90, c_white, 1);	
}