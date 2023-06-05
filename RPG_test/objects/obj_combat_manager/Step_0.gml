var instance1 = global.unitsInstances[|0];
var instance2 = global.unitsInstances[|1];

if(keyboard_check_pressed(vk_space)){
	switch(combatPhase){
		case phase.init:
			combatPhase = phase.startTurn;		
	
		break;
	
		case phase.startTurn:
			combatPhase = phase.chooseAction;
			
		break;
	
		case phase.chooseAction:
			combatPhase = phase.process;
			if(global.unitsInstances[|turnSelector].unitStats.isAlly == true){
				scr = obj_combat_unit.attackUnit;
			}
			else{
				scr = obj_combat_unit.damageUnit;	
			}
			
		break;
	
		case phase.process:
			combatPhase = phase.endTurn;
			turnSelector++;
			turnSelector = turnSelector % 2;
			
			show_debug_message(instance2.unitStats)
			show_debug_message(instance1.unitStats)
			//instance1.attackUnit(instance2)
			method_call(scr, [instance1, instance2]);
			show_debug_message(instance2.unitStats)
			show_debug_message(instance1.unitStats)

		break;
	
	
		case phase.endTurn:
			combatPhase = phase.startTurn;
			
			if(instance1.unitStats.hp <= 0){combatPhase = phase.lose;}
			if(instance2.unitStats.hp <= 0){combatPhase = phase.win;}
		break;
	
		case phase.win:
			game_end();
		break;
	
		case phase.lose:
			game_end();
		break;
	
	}
}



