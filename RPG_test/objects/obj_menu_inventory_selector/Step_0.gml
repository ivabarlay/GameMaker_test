up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
inv = global.inv[?selectedItemType];

op_length = ds_list_size(inv);

scr_scroll_inventory();
scr_changePosInventory(obj_menu_inventory_selector);



if(op_length > 0){
	for(var i = 0; i < op_length; i++){
		spritesInventory[i] = inv[|i].itemSprite;
	}
}


