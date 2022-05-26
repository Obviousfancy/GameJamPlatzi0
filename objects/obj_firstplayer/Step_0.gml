
scr_get_input();

script_execute(state);
scr_state_run();

if( pause && !instance_exists(obj_pause)){
	 
	instance_create_depth(0,0,-9999,obj_pause);

}
depth = -y; 
if (global.golpe) exit;
