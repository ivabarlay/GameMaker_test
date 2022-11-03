switch(combatPhase){
	case phase.init:
	combatPhase = phase.startTurn;		
	
	break;
	
	case phase.startTurn:
	combatPhase = phase.wait ;
	break;
	
	case phase.wait:
	combatPhase = phase.process ;
	break;
	
	case phase.process:
	combatPhase = phase.checkFinish;
	break;
	
	case phase.checkFinish:
	combatPhase = phase.endTurn ;
	break;
	
	case phase.endTurn:
	combatPhase = phase.startTurn;
	break;
	
	case phase.win:
	break;
	
	case phase.lose:
	break;
	
	
}