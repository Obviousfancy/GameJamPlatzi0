/// @description Insert description here
// You can write your code in this editor
scr_get_input();
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,200,"Tu eres un joven astronauta,\ncuya nave se acaba de estrellar en\neste planeta, en el refugio de\nla desmotivacion (anteriormente la escuela).",20,500,2,2,0,c_white,c_white,c_white,c_white,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,350,"Pasaras todas las salas hasta\nderrotar a la desmotivacion para\nser el heroe que restaure el aprendizaje\nen los platzinautas?.",20,500,2,2,0,c_green,c_green,c_blue,c_blue,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,450,"Press ENTER to continue..",15,1000,1,1,0,c_white,c_white,c_white,c_white,1);
if(continue_restart)
{
	room_goto_next();
}

