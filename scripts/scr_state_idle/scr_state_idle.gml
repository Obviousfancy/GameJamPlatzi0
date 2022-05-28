// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_idle(){
	/*sprite_index = spr_main_char_idle;
	image_xscale = 1;*/
	scr_get_input();
	
	

	//if(hor || ver){
	if(right || left || up || down){
		state = scr_state_move;
		//scr_look_char();
		
	}else if(attack){
		image_index = 0;
		state = scr_state_attack; 
	}
}




