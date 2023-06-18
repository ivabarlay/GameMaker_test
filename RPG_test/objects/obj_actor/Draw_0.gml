if(obj_combat_manager.combatPhase == phase.chooseUnit) &&
	(global.unitsInstances[| obj_combat_manager.turnSelector].unitStats.isAlly){
	var unit = global.enemyInstances[| obj_combat_manager.posUnit];
	var _x = unit.unitStats.x;	
	var _y = unit.unitStats.y;	
	var border = 20;
	
	draw_sprite_ext(spr_mano_combat, image_index, _x - border,
		_y, 1, 1, 0, c_white, 1);
	
}