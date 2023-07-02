var ally1 = obj_game.ally1_stats;
var ally2 = obj_game.ally2_stats;
var enemy1 = obj_game.enemy1_stats;
var enemy2 = obj_game.enemy2_stats;

show_debug_message(ally1)
scr_init_units_stats(ally1, ally2, enemy1, enemy2);


global.allyInstances = ds_list_create();
global.enemyInstances = ds_list_create();

for(var i = 0; i < ds_list_size(global.unitsInstances); i++){
	var unit = global.unitsInstances[| i];
	if(unit.unitStats.isAlly){
		ds_list_add(global.allyInstances, unit);	
	}
	else{
		ds_list_add(global.enemyInstances, unit);	
	}
}

	
	