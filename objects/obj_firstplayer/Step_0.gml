if (global.golpe) exit;
scr_get_input();

script_execute(state);
scr_state_run();	
    
if( pause && !instance_exists(obj_pause)){
	 
	instance_create_depth(0,0,-9999,obj_pause);

}
depth = -y; 

if(hp<=0){

	room_goto(Room_Game_Over);
}

show_debug_message(hp);
