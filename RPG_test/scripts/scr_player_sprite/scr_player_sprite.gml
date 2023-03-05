// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_sprite(){
	if (yspd == 0) {  
		if xspd > 0 {face = RIGHT}
		if xspd < 0 {face = LEFT}
		}
	if xspd > 0	&& face = LEFT {face = RIGHT};	
	if xspd < 0	&& face = RIGHT {face = LEFT};	

	if xspd == 0{  
		if yspd > 0 {face = DOWN};
		if yspd < 0 {face = UP};

	if yspd > 0	&& face = UP {face = DOWN};	
	if xspd < 0	&& face = DOWN {face = UP};
	}
}