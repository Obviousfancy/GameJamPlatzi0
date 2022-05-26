if(state == scr_enemy_vg_attack){
	//Aqui nuestro enemigo dispara la bala
	var bullet = instance_create_layer(x+lengthdir_x(10,dir_x),y,"Instances",obj_enemy_vg_bullet);
	bullet.dir = point_direction(x,y,obj_firstplayer.x,obj_firstplayer.y);//hacemos referencia a que lo que asignemos despues del igual se lo vamos a asignar a dir que es una instancia de nuestro bullet
	state = scr_enemy_vg_idle;
}
