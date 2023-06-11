function parseOptionsToString(options){
	res = array_create(array_length(options));
	for(var i = 0; i < array_length(options); i++){
		switch(options[i]){
			case 0: res[0] = "Atacar";
					break;	
					
			case 1: res[1] = "Magia";
					break;	
		}
	}
	return res;
	
}

function parseSkillsToString(skill){
	res = array_create(array_length(skills));
	for(var i = 0; i < array_length(skills); i++){
		switch(options[i]){
			case 0: res[0] = "Atacar";
					break;	
					
			case 1: res[1] = "Magia";
					break;	
		}
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
	if posUnit >= op_length {posUnit = 0};
	else if posUnit < 0 {posUnit = op_length - 1};	
	
	
}

function scr_check_hp_units(){
	for(var i = 0;  i < ds_list_size(global.unitsInstances); i++){
		if(global.unitsInstances[| i].unitStats.hp <= 0){
			show_debug_message(global.unitsInstances[| i])
			instance_destroy(global.unitsInstances[| i]);
	//		show_debug_message(global.unitsInstances[| i])
			
		}
	}
}