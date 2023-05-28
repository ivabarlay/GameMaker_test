startPlayerPosition = noone;
global.selectedMenu = obj_menu_game;
global.menuPile = ds_list_create();

for(var i = 0; i < 6; i++) {
	spritesPlayer[i] = spr_placeholder_down;
}