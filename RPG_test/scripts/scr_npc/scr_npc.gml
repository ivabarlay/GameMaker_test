function scr_npc_dialogue(npcInteracted){
	
	if(npcInteracted != undefined){
		draw_text_transformed(150, 150, npcInteracted.dialogue, 1, 1, 0)
	}
}