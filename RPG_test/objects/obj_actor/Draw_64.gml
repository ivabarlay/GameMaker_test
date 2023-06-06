var instance1 = global.unitsInstances[|0];
var instance2 = global.unitsInstances[|1];

x1 = instance1.unitStats.x;
y1 = instance1.unitStats.y; 

x2 = instance2.unitStats.x;
y2 = instance2.unitStats.y;

draw_set_font(global.font_main);

draw_text_transformed(x1 - 5, y1 - 20, instance1.unitStats.name, 1/2, 1/2, 0)
draw_text_transformed(x2 - 5, y2 - 20, instance2.unitStats.name, 1/2, 1/2, 0)

draw_text_transformed(x1 - 5, y1 - 20*2, instance1.unitStats.hp, 1/2, 1/2, 0)
draw_text_transformed(x2 - 5, y2 - 20 *2, instance2.unitStats.hp, 1/2, 1/2, 0)

draw_text_transformed(300, 150, obj_combat_manager.combatPhase, 1/2, 1/2, 0)


draw_sprite_ext(sprite_index, image_index, x, y, 10, 20, 0, c_white, 1)

for(var i = 0; i < array_length(option); i++){
	var _c = c_white;
	draw_text_transformed_color(x + op_border, y + op_border + op_space*i, option[i],
		0.8, 0.8, 0, _c, _c, _c, _c, 1);	
}