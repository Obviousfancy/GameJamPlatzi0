// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_idle(){
	sprite_index = spr_main_char_idle;
	image_xscale = 1;
	
	if(right || left || up || down){
	state = scr_state_move;
	}
	else if(attack){
		image_index = 0;
		/*if(attack_sensor == noone){
				attack_sensor = instance_create_layer(x+(30*h_dir),y,"Instances",obj_player_attack_sensor);
		
		}*/
		state = scr_state_attack; 
	}
}