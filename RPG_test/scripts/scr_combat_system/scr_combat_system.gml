function parseOptionsToString(options){
	res = array_create(array_length(options));
	for(var i = 0; i < array_length(options); i++){
		switch(options[i]){
			case 0: res[0] = "Atacar";
					break;	
					
			case 1: res[1] = "Magia";
					break;	
					
			case 2: res[2] = "Item";
					break;	
		}
	}
	return res;
	
}

function parseSkillsToString(skills){
	res = ds_list_create();
	for(var i = 0; i < ds_list_size(skills); i++){
		var skill_string = script_get_name(skills[| i]);
		skill_string = string_replace_all(skill_string, "_", " ");
		res[| i] = skill_string;
	}
	return res;
	
}

function scr_change_pos_option(){
	posOption += down_key - up_key; 
	if posOption >= op_length {posOption = 0};
	if posOption < 0 {posOption = op_length - 1};	
}

function scr_change_pos_unit(){
	var op_length = ds_list_size(global.enemyInstances);
	show_debug_message(op_length)
	posUnit += down_key - up_key; 
	if (posUnit >= op_length) {
		posUnit = 0;
	}
	else {
		if posUnit < 0 {posUnit = op_length - 1;}
	}
	
	
}

function scr_check_hp_units(){
	for(var i = 0;  i < ds_list_size(global.unitsInstances); i++){
		if(global.unitsInstances[| i].unitStats.hp <= 0){
			instance_destroy(global.unitsInstances[| i]);
		}
	}
}

function scr_init_stats(unit, damage, name, hp, mp, player, isAlly){
	unit.unitStats.damage = damage;
	unit.unitStats.name = name;
	unit.unitStats.hp = hp;
	unit.unitStats.hp_max = hp;
	unit.unitStats.mp = mp;
	unit.unitStats.player = player;
	unit.unitStats.isAlly = isAlly;
}

function unit_init_constructor (damage, name, hp, mp, player, isAlly) constructor{
	self.damage = damage;
	self.name = name;
	self.hp = hp;
	self.mp = mp;
	self.player = player;
	self.isAlly = isAlly;
}

function unit_null(isAlly) : unit_init_constructor(0, "", -1, 0, 0, isAlly) constructor {
	//self.isAlly = isAlly;	
}

function scr_init_units_stats(ally1, ally2, enemy1, enemy2){
	_units = [ally1, enemy1, ally2, enemy2];
	
	for(var i = 0; i < ds_list_size(global.unitsInstances); i++){
		scr_init_stats(global.unitsInstances[|i], _units[i].damage, _units[i].name,
			_units[i].hp, _units[i].mp, _units[i].player, _units[i].isAlly);
	}
	show_debug_message(global.unitsInstances[|0])
	show_debug_message(global.unitsInstances[|1])
	show_debug_message(global.unitsInstances[|2])
	show_debug_message(global.unitsInstances[|3])
	
}

function scr_win(){
	room_goto(obj_game.combat_room)
}