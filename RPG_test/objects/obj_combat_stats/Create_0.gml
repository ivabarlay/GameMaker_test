instance1 = global.unitsInstances[|0];
instance2 = global.unitsInstances[|1];
instance3 = global.unitsInstances[|2];
instance4 = global.unitsInstances[|3];

scr_init_stats(instance1, 20, "Aliado1", 100, 100, MARCOS, true);

scr_init_stats(instance2, 40, "Enemigo1", 50, 50, 0, false);

scr_init_stats(instance3, 10, "Aliado2", 100, 100, IVAN, true);

scr_init_stats(instance4, 20, "Enemigo2", 100, 100, 0, false);


global.playerSkills[? MARCOS][| 0] = que_si_marco;
global.playerSkills[? MARCOS][| 1] = navaja_git;
global.playerSkills[? IVAN][| 0] = navaja_git;

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

	
	