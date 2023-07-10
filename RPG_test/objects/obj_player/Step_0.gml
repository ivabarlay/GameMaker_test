right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
interact_key = keyboard_check(ord("E"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

depth = 0;

//go to menu
scr_menuGame();

//set sprite
scr_player_sprite();

//collisions
scr_collision();

//move the player
x += xspd;
y += yspd;


//pick up items
scr_pickUp();

//dialogue npc
scr_interact_npc();


