var _c = c_white;
draw_sprite_ext(sprite_index, image_index, 75,
				96, (width +offset)/sprite_width,
				 height/sprite_height, 0, _c, 1);
					
				
draw_set_font(global.font_main);



for(var i = 0; i < 3; i++){
	_c = c_black;
	drawBoxes(i);
	drawButton(spr_menu_return, 2);
	drawButton(spr_menu_details, 1);
	drawButton(spr_menu_equip, 0);
	drawButtonPlayer();
}

scr_drawSpritesInventory(hasSelected);


if(hasSelected == MENU_SELECT_NAME){
	scr_draw_menu_players();
}

else if(hasSelected == MENU_SELECT_UNEQUIP){
	draw_sprite_ext(spr_mano_inventory, -bbox_bottom, 80 + offset, 170, 1, 1, -90, c_white, 1);	
}