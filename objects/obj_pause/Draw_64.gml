draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,true);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,100,"PAUSE",10,100,5,5,0,c_white,c_white,c_white,c_white,1);

//Codigo para detectar la seleccion
if(selected_option == 0){
	var continue_col = c_yellow;
	var restart_col = c_white;
	var credits = c_white;
}else if(selected_option ==  1){
	var continue_col = c_white;
	var restart_col = c_yellow;
	var credits = c_white;
}else if(selected_option == 2){
	var continue_col = c_white;
	var restart_col = c_white;
	var credits = c_yellow;
}
     

	draw_text_ext_transformed_color(display_get_gui_width()/2,250,"Resume",15,100,2,2,0,continue_col,continue_col,continue_col,continue_col,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Controls",15,100,2,2,0,restart_col,restart_col,restart_col,restart_col,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,350,"Restart",15,100,2,2,0,credits,credits,credits,credits,1);
 	
	
draw_set_halign(fa_left);
