// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_move(){/*
if(right){
		 x = x+spd;
		 h_dir = 1;
		 sprite_index = spr_main_char_walking;
		 //Sustituimos el xscale por h_dir
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(left){
		 x = x-spd;
		 h_dir = -1;
		 sprite_index = spr_main_char_walking;
		 if(keyboard_check_pressed(left)){
			state = scr_state_idle;
			h_dir=-1;
		 }
		 //Image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(up){
		 y = y-spd;
		 //En GMS, funciona al reves el eje y, si queremos subir tenemos que poner -
		 h_dir = 1;
		 sprite_index = spr_main_char_walk_up;
		 //image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(down){
		 y = y+spd;
		 //En GMS, funciona al reves el eje y, si queremos subir tenemos que poner +
		 h_dir = 1;
		 sprite_index = spr_main_char_walk_down;
		 //image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}	
	

	image_xscale = h_dir;
	*/
	
	hor = right - left;
	ver = down - up;
	//state = scr_state_move;
	//scr_state_move();
	if(hor !=0 || ver != 0){
	dire = point_direction(0,0,hor,ver);
	x += lengthdir_x(spd,dire);
	y +=  lengthdir_y(spd,dire);
	scr_look_char(dire);
	}
	
	
	if(!right && !left && !up && !down){
			state = scr_state_idle;
	}
	
	//Con sprite index le asignaremos una animacion a nuestro personaje	 
}