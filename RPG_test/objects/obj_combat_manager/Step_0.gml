var instance1 = global.unitsInstances[|0];
var instance2 = global.unitsInstances[|1];

unitSelecting = global.unitsInstances[|turnSelector];
whichPlayerIsSelecting = unitSelecting.unitStats.player;

var _sml = menu_level;


down_key = keyboard_check_pressed(ord("S"));
up_key = keyboard_check_pressed(ord("W"));
accept_key = keyboard_check_pressed(vk_space);



switch(combatPhase){
		case phase.init:
			combatPhase = phase.startTurn;		
	
		break;
	
		case phase.startTurn:
			combatPhase = phase.chooseAction;
			
		break;
		
		case phase.chooseAction:
			switch(menu_level){
				case 0: op_length = ds_map_size(global.options)
						break;
						
				case 1: op_length = ds_list_size(global.playerSkills[? 0]);
						break;
			}
			
			scr_change_pos_option();
			show_debug_message(posOption)
			
			if(accept_key){
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
								combatPhase = phase.chooseUnit;
								break;
					}
				}
				else{
					combatPhase = phase.chooseUnit;
					scr = obj_combat_unit.attackUnit;
				}
			}
			
		break;
		
		case phase.chooseUnit:
			scr_change_pos_unit();
			show_debug_message(posUnit)
			if(accept_key){
				combatPhase = phase.process;
				if(unitSelecting.unitStats.isAlly == true){
					selectedUnit = global.unitsInstances[|posUnit];
				}
				else{
					selectedUnit = global.unitsInstances[|irandom(0)];	
				}
			}
		break;
	
		case phase.process:
			menu_level = 0;
			combatPhase = phase.endTurn;
			turnSelector++;
			turnSelector = turnSelector % 2;
			
			method_call(scr, [unitSelecting, selectedUnit]);

		break;
		
		case phase.endTurn:
			combatPhase = phase.startTurn;
			
			if(instance1.unitStats.hp <= 0){
				combatPhase = phase.lose;
			}
			
			else if(instance2.unitStats.hp <= 0){
				combatPhase = phase.win;
			}
		break;
	
		case phase.win:
			game_end();
		break;
	
		case phase.lose:
			game_end();
		break;
	
}

if _sml != menu_level {posOption = 0};












