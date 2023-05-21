xspd = 0;
yspd = 0;
grab_key = keyboard_check(ord("E"));

move_spd = 2;

sprite[RIGHT] = spr_placeholder_right;
sprite[UP] = spr_placeholder_up;
sprite[LEFT] = spr_placeholder_left;
sprite[DOWN] = spr_placeholder_down;

face = DOWN;

menuGame = false;

global.inv = ds_list_create();