/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/8,"Total points:  ",10,500,2,2,0,c_gray,c_gray,c_gray,c_gray,1);
draw_set_halign(fa_left);
draw_text_ext_transformed_color(display_get_gui_width()/1.5,display_get_gui_height()/8,obj_game_controller.player_data[? "points"],10,500,2,2,0,c_gray,c_gray,c_gray,c_gray,1);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/4,"SKILLS ACHIEVED:",10,500,2,2,0,c_aqua,c_aqua,c_aqua,c_aqua,1)
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/4+80,"Design, Animation and Video Games Programming",10,500,2,2,0,c_aqua,c_aqua,c_aqua,c_aqua,1)
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2+50,"THANK YOU FOR PLAYING",10,500,2,2,0,c_white,c_white,c_white,c_white,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2+100,"Press Enter to Restart",10,500,1,1,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left);

if(keyboard_check(vk_enter)){
	game_restart();	  
}

