whichPlayerIsSelecting = obj_combat_manager.whichPlayerIsSelecting;

draw_set_font(global.font_main);

draw_text_transformed(x1 - 5, y1 - 20, instance1.unitStats.name, 1/2, 1/2, 0)
draw_text_transformed(x2 - 5, y2 - 20, instance2.unitStats.name, 1/2, 1/2, 0)
draw_text_transformed(x3 - 5, y3 - 20, instance3.unitStats.name, 1/2, 1/2, 0)
draw_text_transformed(x4 - 5, y4 - 20, instance4.unitStats.name, 1/2, 1/2, 0)

draw_text_transformed(x1 - 5, y1 - 20*2, instance1.unitStats.hp, 1/2, 1/2, 0)
draw_text_transformed(x2 - 5, y2 - 20 *2, instance2.unitStats.hp, 1/2, 1/2, 0)
draw_text_transformed(x3 - 5, y3 - 20*2, instance3.unitStats.hp, 1/2, 1/2, 0)
draw_text_transformed(x4 - 5, y4 - 20*2, instance4.unitStats.hp, 1/2, 1/2, 0)


draw_text_transformed(300, 150, obj_combat_manager.combatPhase, 1/2, 1/2, 0)


draw_sprite_ext(sprite_index, image_index, x, y, 14, 20, 0, c_white, 1)

if(obj_combat_manager.combatPhase == phase.win || obj_combat_manager.combatPhase == phase.lose){
	draw_text_transformed(150, 150, "TERMINADO", 1, 1, 0);
}

else if(obj_combat_manager.unitSelecting.unitStats.isAlly){
	var posSelected = 0;
	switch(obj_combat_manager.menu_level){
		case 0: for(var i = 0; i < array_length(optionsKeys); i++){
				var _c = c_white;
				if obj_combat_manager.posOption == i {
					_c = c_yellow;
					posSelected = i;
				}
				draw_text_transformed_color(x + op_border, y + op_border + op_space*i, optionsKeys[i],
					0.8, 0.8, 0, _c, _c, _c, _c, 1);	
			}
			break;
		
		case 1:	for(var i = 0; i < ds_map_size(global.playerSkills[? 0]); i++){
				var _c = c_white;
				if obj_combat_manager.posOption == i {
					_c = c_yellow;
					posSelected = i;
				}
				draw_text_transformed_color(x + op_border, y + op_border + op_space*i,
				script_get_name(global.playerSkills[? whichPlayerIsSelecting][| 0]), 0.8, 0.8, 0, _c, _c, _c, _c, 1);	
			}
				break;
	}

	if(obj_combat_manager.combatPhase == phase.chooseAction){
		draw_sprite_ext(spr_mano_inventory, sprite_index, x + op_border*2 + string_width(optionsKeys[posSelected]),
			y + op_border*2 + op_space*obj_combat_manager.posOption, 2, 2, -90, c_white, 1);
	}
	else if(obj_combat_manager.combatPhase == phase.chooseUnit){
		draw_sprite_ext(spr_mano_inventory, sprite_index,
			global.enemyInstances[| obj_combat_manager.posUnit].unitStats.x - 20,
			global.enemyInstances[| obj_combat_manager.posUnit].unitStats.y + 20, 1, 1, 90, c_white, 1);
		//show_debug_message(obj_combat_manager.posUnit)
	}
}