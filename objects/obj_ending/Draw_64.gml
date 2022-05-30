/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,80,"THANK YOU HERO",20,500,5,5,0,c_lime,c_green,c_aqua,c_blue,1);
draw_set_halign(fa_right);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2,"Total points:  ",10,500,2,2,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left);
draw_text_ext_transformed_color(display_get_gui_width()/1.5,display_get_gui_height()/2,obj_game_controller.player_data[? "points"],10,500,2,2,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(display_get_gui_width()/2,330,"SKILLS ACHIEVED:",10,500,2,2,0,c_aqua,c_aqua,c_aqua,c_aqua,1)
draw_text_ext_transformed_color(display_get_gui_width()/2,380,"Design, Animation and Video Games Programming",10,500,2,2,0,c_aqua,c_aqua,c_aqua,c_aqua,1)
draw_text_ext_transformed_color(display_get_gui_width()/2,430,"Salvaste a los platzinautas, ahora recuerda, nunca pares de aprender",10,500,2,2,0,c_white,c_white,c_white,c_white,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,480,"Press Enter to Restart",10,500,1,1,0,c_gray,c_gray,c_gray,c_gray,1);
draw_set_halign(fa_left);

if(keyboard_check(vk_enter)){
	game_restart();	  
}



draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2,"Platziverse era el planeta que creaba\nlos mejores videojuegos en el espacio,\nya que sus habitantes, los platzinautas,\nnunca paraban de aprender.\n\n Un dia, una malvada criatura\n(la desmotivacion) se apodero del lugar,\nsembrando pereza y procastinacion...",20,500,2,2,0,c_white,c_white,c_white,c_white,1);
