with(other){

	hp -= 5;
	// probar aqui el instance_destroy();
	if(hp<=0){ 
		//audio_play_sound(sfx_ugh,0,false);
		room_goto(Room_Game_Over);	
		//audio_pause_sound(bgm_lights_out);
	}
}
instance_destroy();
