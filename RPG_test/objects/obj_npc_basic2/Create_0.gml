name = "Pepiton";

//write your messages in an array, starting at 0, like so
messages[0] = "*Illo eres to mongolo";

var ally1_stats = new unit_null(true);
var enemy1_stats = new unit_null(false);
var ally2_stats = new unit_init_constructor(10, "Aliado2", 100, 100, IVAN, true);
var enemy2_stats = new unit_init_constructor(20, "Enemigo2", 100, 100, 0, false);


arguments = [ally1_stats, ally2_stats, enemy1_stats, enemy2_stats];
final_script = scr_init_combat;


