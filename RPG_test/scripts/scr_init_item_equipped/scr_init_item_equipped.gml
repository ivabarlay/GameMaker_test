// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_item_equipped(){
	#macro MARCO 0 
	#macro DANIEL 1 
	#macro JOSE 2 
	#macro IVAN 3 
	#macro PACHECO 4 
	#macro PAREJA 5 

	#macro WEAPON_EQUIPPED 0
	#macro ARMOR_EQUIPPED 1

	for(var i = 0; i < 6; i++){
		for(var j = 0; j < 2; j++){
			global.itemsEquiped[? i] = ds_map_create();
			global.itemsEquiped[? i][? j] = noone;
		}
	}
}

function scr_equip_item(player, category, obj){
	var kind = noone;
	switch(category){
		case itemType.WEAPON: kind = WEAPON_EQUIPPED;
							break;	
							
		case itemType.ARMOR: kind = ARMOR_EQUIPPED;
							break;	
	}
	
	global.itemsEquiped[? player][? kind] = obj;
}