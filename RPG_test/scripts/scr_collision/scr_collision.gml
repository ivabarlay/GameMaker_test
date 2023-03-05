// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision() {
	
	if place_meeting(x + xspd, y, obj_solid) {
		while(!place_meeting(x + sign(xspd), y, obj_solid)){
			x += sign(xspd);
		}
		xspd = 0;
	}
	
	if place_meeting(x, y + yspd, obj_solid){
		while(!place_meeting(x , y + sign(yspd), obj_solid)){
			y += sign(yspd);
		}
		yspd = 0;
	}
	
	if place_meeting(x + xspd, y, obj_gate) {
		while(!place_meeting(x + sign(xspd), y, obj_gate)){
			x += sign(xspd);
		}
		room_goto_next();
	}
	
	if place_meeting(x, y + yspd, obj_gate){
		while(!place_meeting(x , y + sign(yspd), obj_gate)){
			y += sign(yspd);
		}
		room_goto_next();
	}
	

}