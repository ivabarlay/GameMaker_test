var ally1 = global.unitsInstances[|0];
var enemy1 = global.unitsInstances[|1];
var ally2 = global.unitsInstances[|2];
var enemy2 = global.unitsInstances[|3];

var ally1 = new unit_init_constructor(global.unitsInstances[|0], 
	 20, "Aliado1", 100, 100, MARCOS, true);
var ally2 = new unit_init_constructor(global.unitsInstances[|1], 
	 40, "Enemigo1", 50, 100, 0, false);
var enemy1 = new unit_init_constructor(global.unitsInstances[|2], 
	 10, "Aliado2", 100, 100, IVAN, true);
var enemy2 = new unit_init_constructor(global.unitsInstances[|3], 
	 20, "Enemigo2", 100, 100, 0, false);
	 
scr_init_units_stats(ally1, ally2, enemy1, enemy2);


global.playerSkills[? MARCOS][| 0] = que_si_marco;
global.playerSkills[? MARCOS][| 1] = navaja_gitana;
global.playerSkills[? IVAN][| 0] = navaja_gitana;

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

	
	