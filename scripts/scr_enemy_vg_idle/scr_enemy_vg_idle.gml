// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_vg_idle(){
	sprite_index = spr_enemy_idle_videogame;
	var distance = distance_to_object(obj_firstplayer);//variable local, significa que solo sera accesible en el lugar donde se creo
	/*
	El distance to object calcula la distancia deel borde de el cuadro de la instancia
	que esta llamando a esta funcion que nuestro caso es enemigo hasta la instancia
	que es nuestro personaje
	*/
	//show_debug_message(distance);
	if(distance >= 100){
		var dir = point_direction(x,y,obj_firstplayer.x,obj_firstplayer.y);
		x = x+lengthdir_x(2,dir);//lengthdir_x(len,dir)len: distancia  a la que se movera nuestro personaje, y dir: la direccion hacia la que se movera nuestro personaje
		y = y+lengthdir_y(2,dir);
		dir_x = sign(lengthdir_x(2,dir));//le decimos a nuestro enemigo la direccion en x despues calculado la velocidad
		image_xscale = dir_x;
		sprite_index = spr_enemy_move_videogame;
	}else{
		sprite_index = spr_enemy_attack_videogame;
		if(alarm[0]<=0){
		alarm[0] = room_speed * 1;
		}//te van a dar un intervalo de tiempo antes de que corran el bloque de codigo que tu les indiques 
		/*
		room speed nos indica la velocidad de nuestro cuarto
		y al multiplicarlo por 3 nos quiere decir que nos esperara
		3 segundos para hacer lo que colocamos en el alarm
		*/
	}
}