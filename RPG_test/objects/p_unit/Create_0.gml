#macro HEALTH 0 
#macro SKILLPOINTS 1
#macro SPEED 2	

base[HEALTH] = 10;
base[SKILLPOINTS] = 5;
base[SPEED] = irandom_range(1,10);

current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];


