unitSelecting = global.unitsInstances[|turnSelector];
whichPlayerIsSelecting = unitSelecting.unitStats.player;


var _sml = menu_level;


down_key = keyboard_check_pressed(ord("S"));
up_key = keyboard_check_pressed(ord("W"));
accept_key = keyboard_check_pressed(vk_space);
return_key = keyboard_check_pressed(vk_enter);


switch(combatPhase){
		case phase.init:
			combatPhase = phase.startTurn;		
	
		break;
	
		case phase.startTurn:
			combatPhase = phase.chooseAction;
			
		break;
		
		case phase.chooseAction:
			switch(menu_level){
				case 0: op_length = ds_map_size(global.options);
						break;
						
				case 1: op_length = ds_list_size(global.playerSkills[? whichPlayerIsSelecting]);
						break;
			}
			
			scr_change_pos_option();
		//	show_debug_message(unitSelecting)
			
			if(accept_key || !unitSelecting.unitStats.isAlly){
				if(unitSelecting.unitStats.isAlly == true){
					switch(menu_level){
						case 0: switch(global.options[? posOption]){
						
							case menuOptions.attack: combatPhase = phase.chooseUnit;
													 scr = obj_combat_unit.attackUnit;
													break;
											
							case menuOptions.skills: menu_level = 1;
													break;
						}
						break;
					
						case 1: scr = global.playerSkills[? whichPlayerIsSelecting][| posOption];
								if(scr != undefined){
									combatPhase = phase.chooseUnit;
								}
								break;
					}
				}
				else{
					combatPhase = phase.chooseUnit;
					scr = obj_combat_unit.attackUnit;
				}
			}
			else if(return_key && (menu_level == 1)){
				menu_level = 0;
			}
		posUnit = 0;
		
		break;
		
		case phase.chooseUnit:
			scr_change_pos_unit();
			if(accept_key || !unitSelecting.unitStats.isAlly){
				combatPhase = phase.process;
				if(unitSelecting.unitStats.isAlly == true){
					selectedUnit = global.enemyInstances[|posUnit];
				}
				else{
					selectedUnit = global.allyInstances[| irandom(ds_list_size(global.allyInstances)-1)];
				}
			}
			else if(return_key){
				combatPhase = phase.chooseAction;	
			}
			//show_debug_message(selectedUnit)
		break;
	
		case phase.process:
			menu_level = 0;
			combatPhase = phase.endTurn;
			
			
			method_call(scr, [unitSelecting, selectedUnit]);
			scr_check_hp_units();
			turnSelector++;
			turnSelector = turnSelector % ds_list_size(global.unitsInstances);

		break;
		
		case phase.endTurn: 
			if(ds_list_empty(global.enemyInstances)){
				combatPhase = phase.win;	
			}
			else if (ds_list_empty(global.allyInstances)){
				combatPhase = phase.lose;	
			}
			else{
				combatPhase = phase.startTurn;
				
			//	show_debug_message(ds_list_size(global.unitsInstances))
			}
			
		break;
	
		case phase.win:
			scr_win();
		break;
	
		case phase.lose:
			game_end();
		break;
	
}

if _sml != menu_level {posOption = 0};











