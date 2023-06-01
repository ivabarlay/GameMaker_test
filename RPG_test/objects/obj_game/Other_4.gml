if(self.startPlayerPosition != noone){
	obj_player.x = startPlayerPosition[0];
	obj_player.y = startPlayerPosition[1];
}

ds_list_clear(global.roomItemsPicked);

if(global.flags[? hasPickedItemTest] == false && (room == rm_start)){
	itemTest = instance_create_depth(150, 150, -3, obj_basic_bow);
}

