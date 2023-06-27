name = "Mongolito";

//write your messages in an array, starting at 0, like so
messages[0] = "Hello there! Welcome to the world of Pokemon!";
messages[1] = "My name is Oak! People call me the Pokemon Prof!";
messages[2] = "This world is inhabited by creatures called Pokemon!";
messages[3] = "For some people, Pokemon are pets.";
messages[4] = "Others use them for fights.";
messages[5] = "Myself...";
messages[6] = "I study Pokemon as a profession.";

var ally1_stats = new unit_init_constructor(20, "Aliado1", 100, 100, MARCOS, true);
var ally2_stats = new unit_init_constructor(40, "Enemigo1", 50, 100, 0, false);
var enemy1_stats = new unit_init_constructor(10, "Aliado2", 100, 100, IVAN, true);
var enemy2_stats = new unit_init_constructor(20, "Enemigo2", 100, 100, 0, false);


arguments = [ally1_stats, ally2_stats, enemy1_stats, enemy2_stats];
final_script = scr_init_combat;


