scr_get_input();

script_execute(state);
scr_state_run();

if( pause && !instance_exists(obj_pause)){
	
	instance_create_depth(0,0,-9999,obj_pause);

}
<<<<<<< Updated upstream
depth = -y; 
=======

 

if(health<=0){

	room_goto(Room_Game_Over);
}

/*if room==Room_03_Scene_Program
{
if(obj_computadora.sprite_index==spr_compu_bien)
{
	instance_create_layer(1319,388,"Instances", obj_go_to_next_room);
}
}

//show_debug_message(hp);
>>>>>>> Stashed changes
