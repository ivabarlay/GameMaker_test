up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
move_up_key = keyboard_check_pressed(ord("W"));
move_down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space);

inv = global.inv[?selectedItemType];

item = noone;


if(hasSelected == MENU_SELECT_ITEM){
	if(!ds_list_empty(inv)){
		scr_scroll_inventory();
		scr_changePosInventory(obj_menu_inventory_selector);
		if(accept_key){
			hasSelected = MENU_SELECT_OPTION;
		}
	}
	if(move_down_key){
		hasSelected = MENU_SELECT_UNEQUIP;	
	}
	//show_debug_message(scrollPos)
}

else if hasSelected == MENU_SELECT_OPTION {
	scr_changePosOption(obj_menu_inventory_selector);
	if(accept_key){
		switch(posOption){
							//equip object
			case EQUIP: hasSelected = MENU_SELECT_NAME;
					break;
			case DETAILS: //show details of object
					break;
			case RETURN: hasSelected = MENU_SELECT_ITEM;	
					break;
		}
	}
	//show_debug_message(posOption)
}

else if(hasSelected = MENU_SELECT_NAME){
	if(accept_key){
		item = inv[|pos];
		hasSelected = MENU_SELECT_ITEM;	
		scr_equip_item(pos, posPlayerOption, selectedItemType, item);
		//show_debug_message(global.itemsEquiped[? posPlayerOption][? WEAPON_EQUIPPED]);
		//show_debug_message(global.itemsEquiped[? posPlayerOption][? ARMOR_EQUIPPED]);
	}
	
	scr_changePosPlayerOption(obj_menu_inventory_selector);
	//show_debug_message(posPlayerOption)
}

else if(hasSelected == MENU_SELECT_UNEQUIP && global.selectedMenu == obj_menu_inventory_selector){
	if(move_up_key || down_key){
		hasSelected = MENU_SELECT_ITEM;	
	}	
	if(accept_key){
		instance_create_depth(0, 0, -bbox_bottom, obj_menu_player);	
	}
}

op_length = ds_list_size(inv);

if(op_length > 0){
	for(var i = 0; i < op_length; i++){
		spritesInventory[|i] = inv[|i].itemSprite;
	}
}

