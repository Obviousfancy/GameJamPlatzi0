// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_move(){
	
	hor = (right - left) * (spd+runSpeed) * (1-carryLimit);
	ver = (down - up) * (spd+runSpeed) * (1-carryLimit);
	
	if(hor == 0 && ver == 0){
		//Si no ha levantado nada  ni bajo ningun item
		if(myState != playerState.pickingUp && myState != playerState.puttingDown){
			
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
