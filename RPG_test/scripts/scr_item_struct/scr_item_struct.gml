function Item() constructor{
	name = "";
	level = 1;
}

function Sword(name, level, damage, atkSpeed): Item() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicSword(): Sword("Espada basica", 1, 1, 1) constructor{
	
}
