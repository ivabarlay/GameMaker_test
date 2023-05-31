depth = -bbox_bottom;				
var _c = c_white;

draw_set_font(global.font_main);
scr_draw_menu_players();
draw_text_transformed_color(200, 220, "DESEQUIPAR", 1/4, 1/4, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);


if(hasSelected){
	draw_sprite_ext(sprite_index, image_index, 75 ,
				96, width/sprite_width,
				height/sprite_height, 0, _c, 1);
			
	for(var i = 0; i < 3; i++){
		if(global.itemsEquiped[? posPlayerOption][? i] != undefined){
			show_debug_message(global.itemsEquiped[? posPlayerOption][? 1] != undefined)
			//show_debug_message(global.itemsEquiped[? posPlayerOption][? WEAPON_EQUIPPED]);
			//ds_list_add(spritesInventory, global.itemsEquiped[? posPlayerOption][? WEAPON_EQUIPPED].itemSprite)
			//draw_sprite_ext(spritesInventory[|i], bbox_bottom, 100, 150, 2, 2, 0, _c, 1)
		}
	}
	
	
	
	
	
}