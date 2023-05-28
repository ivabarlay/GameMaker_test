up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space);
inv = global.inv[?selectedItemType];


op_length = ds_list_size(inv);

if(hasSelected == false){
	scr_scroll_inventory();
	scr_changePosInventory(obj_menu_inventory_selector);
	show_debug_message(scrollPos)
}

if hasSelected == true {
	scr_changePosOption(obj_menu_inventory_selector);
	if(accept_key){
		switch(posOption){
			case 0: 
					break;
			case 1: 
					break;
			case 2: 
					break;
		}
	}
	show_debug_message(posOption)
}

if(op_length > 0){
	for(var i = 0; i < op_length; i++){
		spritesInventory[|i] = inv[|i].itemSprite;
	}
}

if(accept_key){
	hasSelected = !hasSelected;
}
