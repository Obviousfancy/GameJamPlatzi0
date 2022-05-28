// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_idle(){
	/*sprite_index = spr_main_char_idle;
	image_xscale = 1;*/
	scr_get_input();
	
	
	//myState = playerState.idle;
	//if(hor || ver){
	if(right || left || up || down){
		state = scr_state_move;	
	//}else if(attack){
		//myState = playerState.attacking; 
	}
}




