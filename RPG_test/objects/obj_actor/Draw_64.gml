var instance1 = global.unitsInstances[|0];
var instance2 = global.unitsInstances[|1];

x1 = instance1.unitStats.x;
y1 = instance1.unitStats.y; 

x2 = instance2.unitStats.x;
y2 = instance2.unitStats.y;

draw_text(x1 - 5, y1 - 20, instance1.unitStats.name)
draw_text(x2 - 5, y2 - 20, instance2.unitStats.name)

draw_text(x1 - 5, y1 - 20*2, instance1.unitStats.hp)
draw_text(x2 - 5, y2 - 20 *2, instance2.unitStats.hp)



draw_text(150, 150, obj_combat_manager.combatPhase)
