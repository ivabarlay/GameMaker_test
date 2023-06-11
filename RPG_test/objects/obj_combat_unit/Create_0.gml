ds_list_add(global.unitsInstances, self);

function initStats(_x, _y) constructor {
	x = _x;
	y = _y;
	name = "";
	isAlly = false;
	hp = 0;
	damage = 0;
	
	
};

unitStats = new initStats(x, y);


function attackUnit(unitAttacking, unitDamaged){
	unitDamaged.unitStats.hp = unitDamaged.unitStats.hp - unitAttacking.unitStats.damage;	
}

function damageUnit(unitDamaged, unitAttacking){
	unitDamaged.unitStats.hp -= unitAttacking.unitStats.damage;
}