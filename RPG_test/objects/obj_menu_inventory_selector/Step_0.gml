up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);
inv = global.inv[?selectedItemType];


op_length = ds_list_size(inv);

if(hasSelected == MENU_SELECT_ITEM){
	scr_scroll_inventory();
	scr_changePosInventory(obj_menu_inventory_selector);
	if(accept_key){
		hasSelected = MENU_SELECT_OPTION;
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
		hasSelected = MENU_SELECT_ITEM;	
	}
}

if(op_length > 0){
	for(var i = 0; i < op_length; i++){
		spritesInventory[|i] = inv[|i].itemSprite;
	}
}


