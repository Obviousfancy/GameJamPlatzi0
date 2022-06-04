// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_move(){
	
	hor = (right - left) * (spd+runSpeed) * (1-carryLimit);
	ver = (down - up) * (spd+runSpeed) * (1-carryLimit);
	
	if(hor == 0 && ver == 0){
		
		//Si esta detenido por completo
		//Si no ha levantado nada  ni bajo ningun item
		if(myState != playerState.pickingUp && myState != playerState.puttingDown){
			if(room == Room_05_Scene_Videogames){
				if(attack == true){
					if(myState == playerState.idle && dir_main == 0){
					show_debug_message("Puedes atacar a la derecha");
					var bullet = instance_create_layer(x+lengthdir_x(10,10),y,"Instances",obj_main_char_bullet);
					//var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					bullet.dir = point_direction(x,y,obj_firstplayer.x,obj_firstplayer.y);
					//state = scr_enemy_vg_idle;
					audio_play_sound(disparo2,0,false);
		
					
					//left
					}
					if(myState == playerState.idle && dir_main == 2){
						show_debug_message("Puedes atacar izquierda");
						var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					//var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					bullet.dir = point_direction(x,y,-(obj_firstplayer.x),obj_firstplayer.y);
					//state = scr_enemy_vg_idle;
					audio_play_sound(disparo2,0,false);
					myState = playerState.attacking;
						dir_main = 2;
					//down
					}
					if(myState == playerState.idle && dir_main == 3){
						show_debug_message("Puedes atacar izquierda");
						var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					//var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					bullet.dir = point_direction(x,y,0,270);
					//state = scr_enemy_vg_idle;
					audio_play_sound(disparo2,0,false);
					myState = playerState.attacking;
						//dir_main = 2;
						show_debug_message("Puedes atacar abajo");
					}
					//up
					if(myState == playerState.idle && dir_main == 1){
						show_debug_message("Puedes atacar izquierda");
						var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					//var bullet = instance_create_layer(x,y,"Instances",obj_main_char_bullet);
					bullet.dir = point_direction(x,y,obj_firstplayer.x,-(obj_firstplayer.y));
					//state = scr_enemy_vg_idle;
					audio_play_sound(disparo2,0,false);
					myState = playerState.attacking;
						//dir_main = 2;
						show_debug_message("Puedes atacar arriba");
					}
					//Si quedo en lado abajo
					//Si quedo en lado izquierdo 
					//Si quedo en lado derecho 
					//Si quedo en lado arriba 
					myState = playerState.attacking;
				}
			}else{
				attack = noone;
			show_debug_message("No puedes a}hacer nada");
			}
			
			
			if(hasItem == noone){
				myState = playerState.idle;
			}
			
			//Si estas llevando el item
			else{
			myState = playerState.carryIdle;
			}
			
}

	}
	if(hor !=0 || ver != 0){
		
	
	//dire = point_direction(0,0,hor,ver);
		if !collision_point(x+hor,y,obj_par_environment,true,true){
			//x += lengthdir_x(spd,dire);
			x += hor;
		}
		if !collision_point(x,y+ver,obj_par_environment,true,true){
			//y += lengthdir_y(spd,dire);
			y += ver;
		}
	
	if(hor > 0){
		dir_main = 0;
	//left
	}
	if(hor <0){
		dir_main = 2;
	//down
	}
	if(ver >0){
		dir_main = 3;
	}
	//up
	if(ver <0){
		dir_main = 1;
	}
	// Set state
	// If we don't have an item
	if (hasItem == noone)
	{		
		myState = playerState.walking;
	}
	// If we're carrying an item
	else
	{
		myState = playerState.carrying;
	}
	
}	





}
	//Con sprite index le asignaremos una animacion a nuestro personaje	 