function scr_init_combat(ally1_stats, ally2_stats, enemy1_stats, enemy2_stats){
	obj_game.ally1_stats = ally1_stats;
	obj_game.ally2_stats = ally2_stats;
	obj_game.enemy1_stats = enemy1_stats;
	obj_game.enemy2_stats = enemy2_stats;
	obj_game.combat_room = room;
	room_goto(rm_combat_cave);
}