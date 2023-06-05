enum phase {
	init,
	startTurn,
	chooseAction,
	process,
	endTurn,
	win,
	lose
}


combatPhase = phase.init;
turnOrder = array_create(2);
turnSelector = 0;
for(var i = 0; i < 2; i++){ 
	turnOrder[i] = i;	
}

pos = 0;