function Item() constructor{
	name = "";
	level = 1;
}

function Weapon(): Item() constructor{
		self.itemKind = itemType.WEAPON;
}

function Armor(): Item() constructor{
		self.itemKind = itemType.ARMOR;
}

function Potion(): Item() constructor{
		self.itemKind = itemType.POTION;
}

function Helmet(name, level, defense): Armor() constructor{
	self.name = name;
	self.level = level;
	self.defense = defense;
}

function BasicHelmet(): Helmet("Casco basico", 1, 1) constructor{}

function Sword(name, level, damage, atkSpeed): Weapon() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicSword(): Sword("Espada basica", 1, 1, 1) constructor{}

function Bow(name, level, damage, atkSpeed): Weapon() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicBow(): Sword("Arco basico", 1, 1, 1) constructor{}


#macro WEAPON_POS 0
#macro ARMOR_POS 1
#macro POTION_POS 2
