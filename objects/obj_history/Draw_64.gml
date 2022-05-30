/// @description Insert description here
// You can write your code in this editor
scr_get_input();
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,80,"Platziverse",20,500,5,5,0,c_lime,c_green,c_aqua,c_blue,1);

draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2,"Platziverse era el planeta que creaba\nlos mejores videojuegos en el espacio,\nya que sus habitantes, los platzinautas,\nnunca paraban de aprender.\n\n Un dia, una malvada criatura\n(la desmotivacion) se apodero del lugar,\nsembrando pereza y procastinacion...",20,500,2,2,0,c_white,c_white,c_white,c_white,1);

if(continue_restart)
{
	room_goto_next();
}

