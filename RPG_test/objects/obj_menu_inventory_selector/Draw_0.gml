var _c = c_white;
draw_sprite_ext(sprite_index, image_index, 75 ,
				96, width/sprite_width,
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
}


if(hasSelected = MENU_SELECT_NAME){
	var position = posPlayerOption % 3;
	
	draw_sprite_stretched(sprite_index, bbox_bottom, 150, 96, 170, 144);
	
	for(var i = 0; i < 6; i++){
		if(i < 3){
			draw_sprite_ext(obj_game.spritesPlayer[i], bbox_bottom, 190 + 40 * i, 120, 1.5, 1.5, 0, c_white, 1);
		}
		if(i >= 3){
			draw_sprite_ext(obj_game.spritesPlayer[i], bbox_bottom, 190 + 40 * (i-3), 180, 1.5, 1.5, 0, c_white, 1);
		}
		
		if(posPlayerOption < 3){
			draw_sprite_ext(spr_mano_inventory, bbox_bottom, 190 + 40 * position, 150, 1, 1, 180, c_white, 1);	
		}
		
		if(posPlayerOption <= 5 && posPlayerOption >= 3){
			draw_sprite_ext(spr_mano_inventory, bbox_bottom, 190 + 40 * position, 210, 1, 1, 180, c_white, 1);	
		}
	}
}

//Borrar el objeto tras equiparlo

if(hasEquipped){	
	ds_list_delete(global.inv, global.inv[|pos]);
	hasEquipped = false;
}
			   