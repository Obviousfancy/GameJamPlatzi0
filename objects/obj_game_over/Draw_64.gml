scr_get_input();
//draw_text_ext_transformed_color(260,200,"GAME OVER",10,100,5,5,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/4,"GAME OVER",10,100,5,5,0,c_white,c_white,c_white,c_white,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2,"Press Enter to Restart",15,100,2,2,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left);
 if(continue_restart){
	game_restart();	  
} 
