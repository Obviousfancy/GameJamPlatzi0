draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
if (room==Room_04_Scene_design)
{
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(display_get_gui_width()/2,100,"DESIGN",10,500,3,3,0,c_white,c_white,c_white,c_white,1);

	draw_text_ext_transformed_color(display_get_gui_width()/2,200,"Atraviesa la sala evitando que la procastinacion y la pereza te detengan.",15,300,2,2,0,c_white,c_white,c_white,c_white,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"El pincel te ayuda a derrotar a los enemigos.",15,300,2,2,0,c_white,c_white,c_white,c_white,1);
} 	
if (room==Room_03_Scene_Program)
{
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(display_get_gui_width()/2,100,"PROGRAMMING",10,500,3,3,0,c_blue,c_blue,c_blue,c_blue,1);

	draw_text_ext_transformed_color(display_get_gui_width()/2,200,"Une los bloques que correspondan para completar la sala.",15,300,2,2,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Recuerda que para agarrar o soltar debes pulsar ESPACIO.",15,300,2,2,0,c_blue,c_blue,c_blue,c_blue,1);
}
if (room==Room_05_Scene_Videogames)
{
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(display_get_gui_width()/2,100,"VIDEOGAMES",10,500,3,3,0,c_purple,c_purple,c_purple,c_purple,1);

	draw_text_ext_transformed_color(display_get_gui_width()/2,200,"Cumple con la meta y vence el examen.",15,300,2,2,0,c_purple,c_purple,c_purple,c_purple,1);
	draw_text_ext_transformed_color(display_get_gui_width()/2,300,"Recuerda que puedes usar tus nuevas habilidades de programacion y diseño con la tecla J.",15,300,2,2,0,c_purple,c_purple,c_purple,c_purple,1);
} 	
	
draw_set_halign(fa_left);

