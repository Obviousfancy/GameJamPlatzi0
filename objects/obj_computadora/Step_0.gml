/// @description 

if(instance_exists(obj_npc_cube_green_if) && instance_exists(obj_npc_cube_red_do) && instance_exists(obj_npc_cube_purple_switch)){
	if(obj_npc_cube_green_if.myState == npcState.done && obj_npc_cube_red_do.myState == npcState.done && obj_npc_cube_purple_switch.myState == npcState.done){
	sprite_index = spr_compu_bien;		
	if(obj_computadora.sprite_index==spr_compu_bien)
	{
	alarm[0] = 20;
	}
	}

}


depth = -y;