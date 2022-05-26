if(state == scr_state_attack){
	/*if(attack_sensor != noone){
		instance_destroy(attack_sensor);
	}
	state = scr_state_idle;*/
}

//luego de que te golpea un enemigo en diseño gráfico
if (sprite_index==spr_main_char_dead)
{
	x=xstart;
	y=ystart;
	sprite_index=spr_main_char_idle;
	global.golpe=false;
}
