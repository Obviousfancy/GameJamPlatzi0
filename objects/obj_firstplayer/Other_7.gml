if(state == scr_state_attack){
	sprite_index = spr_main_char_attacking;
	var bullet = instance_create_layer(x+lengthdir_x(10,dir_x),y,"Instances",obj_main_char_bullet);
	//bullet.dir = point_direction(x,y,obj_firstplayer.x,obj_firstplayer.y);
	state = scr_state_idle;
}

//luego de que te golpea un enemigo en diseño gráfico
if (sprite_index==spr_main_char_dead)
{
	x=xstart;
	y=ystart;
	sprite_index=spr_main_char_idle;
	global.golpe=false;
}
