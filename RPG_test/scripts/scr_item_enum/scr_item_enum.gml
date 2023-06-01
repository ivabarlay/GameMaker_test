enum itemType{
	WEAPON, ARMOR, POTION	
}

function parseItemEnum(category){
	var kind = undefined;
	switch(category){
		case itemType.WEAPON: kind = WEAPON_EQUIPPED;
							break;	
							
		case itemType.ARMOR: kind = ARMOR_EQUIPPED;
							break;	
	}
	return kind;
}