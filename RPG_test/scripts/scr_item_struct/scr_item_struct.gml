function Item() constructor{
	name = "";
	level = 1;
	itemSprite = noone;
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

function Helmet(name, level, defense, sprite): Armor() constructor{
	self.name = name;
	self.level = level;
	self.defense = defense;
	self.itemSprite = sprite;
}

function BasicHelmet(): Helmet("Casco basico", 1, 1, spr_basic_helmet) constructor{}

function Sword(name, level, damage, atkSpeed, sprite): Weapon() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	self.itemSprite = sprite;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicSword(): Sword("Espada basica", 1, 1, 1, spr_basic_sword) constructor{}

function Dagger(name, level, damage, atkSpeed, sprite): Weapon() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	self.itemSprite = sprite;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicDagger(): Dagger("Daga basica",1, 1, 1, spr_basic_dagger) constructor{}

function Bow(name, level, damage, atkSpeed, sprite): Weapon() constructor{
	self.name = name;
	self.level = level;
	self.damage = damage;
	self.atkSpeed = atkSpeed;
	self.itemSprite = sprite;
	
	function addDamage(dmg){
		self.damage += dmg;
	}
}

function BasicBow(): Sword("Arco basico", 1, 1, 1, spr_basic_bow) constructor{}


#macro WEAPON_POS 0
#macro ARMOR_POS 1
#macro POTION_POS 2
