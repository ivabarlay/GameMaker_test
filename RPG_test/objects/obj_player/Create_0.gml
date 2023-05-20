xspd = 0;
yspd = 0;

move_spd = 2;

sprite[RIGHT] = spr_placeholder_right;
sprite[UP] = spr_placeholder_up;
sprite[LEFT] = spr_placeholder_left;
sprite[DOWN] = spr_placeholder_down;

face = DOWN;

menuGame = false;

global.inv = ds_list_create();
//ds_list_add(global.inv, new Sword("espadita", 1, 1, 1));
//global.inv[|0].addDamage(3);
//ds_list_add(global.inv, new BasicSword());
//global.inv[|1].addDamage(2);