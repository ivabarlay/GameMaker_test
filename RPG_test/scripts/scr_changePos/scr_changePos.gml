function scr_changePos(obj){
	if(global.selectedMenu == obj){
		pos += down_key - up_key; 
	}
	if pos >= op_length {pos = 0};
	if pos < 0 {pos = op_length - 1};

}

function scr_scroll_inventory(){
	if(global.selectedMenu == obj_menu_inventory_selector){
	if(op_length - pos) > 3 && scrollPos >= 0{
		scrollPos += down_key - up_key; 
	}
	else if(scrollPos > 0){
		scrollPos -= up_key; 	
		}
	}
	if scrollPos >= (op_length - 2) {scrollPos = 0};
	if scrollPos < 0 {scrollPos = 0};

	for(var i = 0; i < 2; i++){
		if(op_length <= 3){
			scrollPos = 0;
		}
	}
}