// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_run(){
	if(run && (left || up || down || right)){
		spd = 5;
		sprite_index = spr_main_char_running;
	}else{
		spd = 3 ;
	}
}