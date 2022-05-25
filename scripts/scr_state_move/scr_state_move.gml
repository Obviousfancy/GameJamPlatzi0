// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_move(){
if(right){
		 x = x+spd;
		 h_dir = 1;
		 //Sustituimos el xscale por h_dir
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(left){
		 x = x-spd;
		 h_dir = -1;
		 //Image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(up){
		 y = y-spd;
		 //En GMS, funciona al reves el eje y, si queremos subir tenemos que poner -
		 h_dir = 1;
		 //image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}else if(down){
		 y = y+spd;
		 //En GMS, funciona al reves el eje y, si queremos subir tenemos que poner +
		 h_dir = 1;
		 //image_xscale = -1;
		 //Escala la imagen para darle ciertos efectos, util en explosiones o muertes	 
	}	
	
	image_xscale = h_dir;
	sprite_index = spr_main_char_walking;
	
	if(!right && !left && !up && !down){
			state = scr_state_idle;
	}

	//Con sprite index le asignaremos una animacion a nuestro personaje	 
}