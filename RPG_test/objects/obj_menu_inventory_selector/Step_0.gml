up_key = keyboard_check_pressed(ord("A"));
down_key = keyboard_check_pressed(ord("D"));
inv = global.inv[?selectedItemType];

op_length = ds_list_size(inv);

scr_change_pos_inventory();

show_debug_message(pos);

