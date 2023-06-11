instance1 = global.unitsInstances[|0];
instance2 = global.unitsInstances[|1];
instance3 = global.unitsInstances[|2];
instance4 = global.unitsInstances[|3];

instance1.unitStats.damage = 20;
instance1.unitStats.name = "Instancia1";
instance1.unitStats.hp = 100;
instance1.unitStats.isAlly = true;
instance1.unitStats.player = MARCOS;

instance2.unitStats.damage = 40;
instance2.unitStats.name = "Instancia2";
instance2.unitStats.hp = 50;
instance2.unitStats.player = 0;

instance3.unitStats.damage = 10;
instance3.unitStats.name = "Instancia3";
instance3.unitStats.hp = 100;
instance3.unitStats.isAlly = true;
instance3.unitStats.player = IVAN;

instance4.unitStats.damage = 20;
instance4.unitStats.name = "Instancia4";
instance4.unitStats.hp = 100;
instance4.unitStats.player = 0;


global.playerSkills[? MARCOS][| 0] = ice_spell;
global.playerSkills[? IVAN][| 0] = punala_gitana;

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

	
	