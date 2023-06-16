whichPlayerIsSelecting = obj_combat_manager.whichPlayerIsSelecting;

draw_set_font(global.font_main);

var _w = room_width;
var _y = 380;

draw_sprite_stretched(sprite_index, image_index, 0, _y, 1.3*_w/3, 100)
draw_sprite_stretched(sprite_index, image_index, 1.3*_w/3, _y, (1.7*_w)/3, 100)

for(var i = 0; i < ds_list_size(global.enemyInstances); i++){
	var _c = c_grey;
	
	if(global.enemyInstances[| i] == global.unitsInstances[| obj_combat_manager.turnSelector]){
		_c = c_white; 	
	}
	
	draw_text_transformed_color(op_border, _y + op_border + op_space*i,
		global.enemyInstances[| i].unitStats.name, 0.75, 0.75, 0,
		 _c, _c, _c, _c, 1);	
}

for(var i = 0; i < ds_list_size(global.allyInstances); i++){
	var _c = c_grey;
	var name = global.allyInstances[| i].unitStats.name;
	var hp = global.allyInstances[| i].unitStats.hp;
	var mp = global.allyInstances[| i].unitStats.mp;
	var sep = 100;
	
	if(global.allyInstances[| i] == global.unitsInstances[| obj_combat_manager.turnSelector]){
		_c = c_white; 	
	}
	
	draw_text_transformed(1.3*_w/3 + op_border*2 + sep,
		_y + 5, "HP", 0.8, 0.4, 0);
		
	draw_text_transformed(1.3*_w/3 + op_border*2 + sep + string_width("000"),
		_y + 5, "MP", 0.8, 0.4, 0);
		
	draw_text_transformed(1.3*_w/3 + op_border*2 + sep + string_width("00") + 5,
		_y + 10 + op_border + op_space*i, ":", 0.8, 0.4, 1);
	
	draw_text_transformed_color(1.3*_w/3 + op_border, _y + 5 + op_border + op_space*i,
		name, 0.75, 0.75, 0, _c, _c, _c, _c, 1);
		
	draw_text_transformed(1.3*_w/3 + op_border*2 + sep,
		_y + 5 + op_border + op_space*i, hp, 0.75, 0.75, 0);
		
	draw_text_transformed(1.3*_w/3 + op_border*2 + sep + string_width("000"),
		_y + 5 + op_border + op_space*i, mp, 0.75, 0.75, 0);
}

if(obj_combat_manager.combatPhase == phase.chooseAction
	&& global.unitsInstances[| obj_combat_manager.turnSelector].unitStats.isAlly){
	
	switch(obj_combat_manager.menu_level){
		case 0: 
		draw_sprite_stretched(sprite_index, image_index, 50, 310, 0.25 * _w, 150)	
		for(var i = 0; i < array_length(optionsKeys); i++){
			var _c = c_white;
			if(i == obj_combat_manager.posOption){
				_c = c_yellow;	
				draw_sprite_ext(spr_mano, image_index, 50 + array_max_string_width(optionsKeys),
				310 + op_border*2 + op_space*i, 1, 1, 180, c_white, 1);
			}
			draw_text_transformed_color(50 + op_border, 310 + op_border + op_space*i,
			optionsKeys[i], 0.75, 0.75, 0, _c, _c, _c, _c, 1);
		}
		break;
		
		case 1: 
		var player = global.unitsInstances[| obj_combat_manager.turnSelector].unitStats.player;
		draw_sprite_stretched(sprite_index, image_index, 50, 310, 0.4 * _w, 150);
		for(var i = 0; i < ds_list_size(global.playerSkills[? player]); i++){
			var skillsList = parseSkillsToString(global.playerSkills[? player]);
			var _c = c_white;
			if(i == obj_combat_manager.posOption){
				_c = c_yellow;	
				draw_sprite_ext(spr_mano, image_index, 50 + ds_list_max_string_width(skillsList)*0.9,
				310 + op_border*2 + op_space*i, 1, 1, 180, c_white, 1);
			}
			draw_text_transformed_color(50 + op_border, 310 + op_border + op_space*i,
			skillsList[| i], 0.75, 0.75, 0, _c, _c, _c, _c, 1);	
		}
		break;
	}
}

if(obj_combat_manager.combatPhase == phase.chooseUnit) &&
	(global.unitsInstances[| obj_combat_manager.turnSelector].unitStats.isAlly){
	var unit = global.enemyInstances[| obj_combat_manager.posUnit];
	var _x = unit.x;	
	var _y = unit.y;	
	var border = 20;
	var _str = unit.unitStats.name + "            "  + string(unit.unitStats.hp)
		+ " / " + string(unit.unitStats.hp_max);
	
	//draw_sprite_ext(spr_mano_combat, image_index, _x, _y,
	//	1, 1, 0, c_white, 1);
	draw_circle(_x, _y, 1, 1)
	show_debug_message(_x)
	show_debug_message(_y)
	draw_sprite_stretched(sprite_index, image_index, 0, 0,
	_w, 75);
	
	draw_text_transformed(border, border, _str, 1, 1, 0);
	
	
}














