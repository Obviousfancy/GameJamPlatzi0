draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,true);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,100,"PAUSE",10,100,5,5,0,c_white,c_white,c_white,c_white,1);

//Codigo para detectar la seleccion
if(selected_option == 0){
	draw_text_ext_transformed_color(display_get_gui_width()/2,250,"Continue",15,100,2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Restart",15,100,2,2,0,c_white,c_white,c_white,c_white,1);
}else if(selected_option ==  1){
	draw_text_ext_transformed_color(display_get_gui_width()/2,250,"Continue",15,100,2,2,0,c_white,c_white,c_white,c_white,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Restart",15,100,2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
}


draw_set_halign(fa_left);
