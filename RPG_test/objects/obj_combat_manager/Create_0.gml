enum phase {
	init,
	startTurn,
	chooseAction,
	chooseUnit,
	process,
	endTurn,
	win,
	lose
}

enum menuOptions{
	attack,
	skills,
	item,
}

#macro ATTACK 0
#macro SKILLS 1
#macro ITEM 2

global.options = ds_map_create();

global.options[? ATTACK] = menuOptions.attack;
global.options[? SKILLS] = menuOptions.skills;
global.options[? ITEM] = menuOptions.item;

combatPhase = phase.init;
turnOrder = array_create(2);
turnSelector = 0;
posOption = 0;
selectedUnit = 0;
posUnit = 0;
menu_level = 0;
op_length = 0;

for(var i = 0; i < 2; i++){ 
	turnOrder[i] = i;	
}


