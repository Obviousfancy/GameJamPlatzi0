/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_center);               
draw_text_ext_transformed_color(display_get_gui_width()/2,100,"My first game",10,1000,5,5,0,c_white,c_white,c_white,c_white,1);

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
     
if(file_existance){
	var first_option_text = "Continue";
}else{
	var first_option_text = "New Game";         
}
	draw_text_ext_transformed_color(display_get_gui_width()/2,250,first_option_text,15,100,2,2,0,continue_col,continue_col,continue_col,continue_col,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Exit",15,100,2,2,0,restart_col,restart_col,restart_col,restart_col,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,350,"Credits",15,100,2,2,0,credits,credits,credits,credits,1);
 	
	 
draw_set_halign(fa_left);


