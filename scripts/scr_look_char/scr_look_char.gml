// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_look_char(dire){
	if (dire < 22.5 || dire >= 337.5) {
		sprite_index = spr_main_char_walking;
		image_xscale = 1;
	} else if (dire >= 22.5 && dire < 67.5) {
		sprite_index = spr_main_char_walk_up;
	} else if (dire >= 67.5 && dire < 112.5) {
		sprite_index = spr_main_char_walk_down;
	} else if (dire >= 112.5 && dire < 157.5) {
		sprite_index = spr_main_char_walk_up;
	} else if (dire >= 157.5 && dire < 202.5) {
		sprite_index = spr_main_char_walking;
		image_xscale = -1;
	} else if (dire >= 202.5 && dire < 247.5) {
		sprite_index = spr_main_char_walk_down;
	} else if (dire >= 247.5 && dire < 292.5) {
		sprite_index = spr_main_char_walk_down;
	} else if (dire >= 292.5 && dire < 337.5) {
		sprite_index = spr_main_char_walk_down;
	}
	
	

}