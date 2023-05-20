function scr_changePos(object){
	if(global.selectedMenu == object){
		pos += down_key - up_key; 
	}
	if pos >= op_length {pos = 0};
	if pos < 0 {pos = op_length - 1};

}