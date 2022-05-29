with(other){

	health -= 40;
	// probar aqui el instance_destroy();
	if(health<=0){ 
		//audio_play_sound(sfx_ugh,0,false);
		room_goto(Room_Game_Over);	
		//audio_pause_sound(bgm_lights_out);
	}
}
instance_destroy();

