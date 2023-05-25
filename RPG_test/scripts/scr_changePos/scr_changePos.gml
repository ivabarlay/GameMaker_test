function scr_changePos(obj){
	if(global.selectedMenu == obj){
		pos += down_key - up_key; 
	}
	if pos >= op_length {pos = 0};
	if pos < 0 {pos = op_length - 1};

}

function scr_change_pos_inventory(){
	if(global.selectedMenu == obj_menu_inventory_selector){
	if(op_length - pos) > 3 && pos >= 0{
		pos += down_key - up_key; 
	}
	else if(pos > 0){
		pos -= up_key; 	
		}
	}
	if pos >= (op_length - 2) {pos = 0};
	if pos < 0 {pos = 0};

	for(var i = 0; i < 2; i++){
	if(op_length <= 3){
		pos = 0;
	}
	}
}