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
			global.itemsEquiped[? i][? j] = undefined;
		}
	}
}

function scr_equip_item(pos, player, category, obj){
	var kind = parseItemEnum(category);
	if(global.itemsEquiped[? player][? kind] == undefined){
		global.itemsEquiped[? player][? kind] = obj;
		ds_list_delete(global.inv[?selectedItemType], pos);
	}
	else if(global.inv[? pos][| pos] != undefined){
		scr_unequip_item(player, category);
		global.itemsEquiped[? player][? kind] = obj;
		ds_list_delete(global.inv[?selectedItemType], pos);
	}
	
}

function scr_unequip_item(player, category){
	var kind = parseItemEnum(category);
	
	ds_list_add(global.inv[? selectedItemType], global.itemsEquiped[? player][? kind]);
	global.itemsEquiped[? player][? kind] = undefined;
}








