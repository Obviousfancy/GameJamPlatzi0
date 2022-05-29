
function scr_state_attack(){
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
	
	myState = playerState.attacking;
}