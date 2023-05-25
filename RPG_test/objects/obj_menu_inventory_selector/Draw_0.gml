var _c = c_white;
draw_sprite_ext(sprite_index, image_index, 75 ,
				96, width/sprite_width,
				height/sprite_height, 0, _c, 1);
				
depth = -bbox_bottom;				
				
draw_set_font(global.font_main);

switch(self.selectedItemType){
	case itemType.WEAPON:
		for(var i = 0; i < op_length - 1; i++){
			//draw_sprite(sprites[i], -bbox_bottom, 50, 50);	
		}
		break;
}	









