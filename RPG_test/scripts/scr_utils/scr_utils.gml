function ds_list_contains(id, value){
	return (ds_list_find_index(id, value) != -1);	
}

function array_max_string_width(array){
	res = 0;
	for(var i = 0; i < array_length(array); i++){
		res = max(res, string_width(array[i]))	
	}
	return res;
}
