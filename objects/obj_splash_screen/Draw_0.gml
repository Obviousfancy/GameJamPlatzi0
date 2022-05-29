

draw_sprite_ext(spr_main_char_attacking_down,3,display_get_gui_width()/2-250,display_get_gui_height()/2,4,4,0,c_white,1);
draw_text_ext_transformed_color(display_get_gui_width()/2-90,display_get_gui_height()/2-150,"Fancy",0,100,8,8,0,c_red,c_red,c_red,c_red,1);
draw_text_ext_transformed_color(display_get_gui_width()/2,display_get_gui_height()/2+5,"Studios",0,100,4,4,0,c_white,c_white,c_white,c_white,1)

if(fade_out){
	//Alpha empieza a pintar todo lo que tiene delante con cierta transparencia
draw_set_alpha(current_alpha);
//Dibuja un rectangulo negro que se desvanecera
draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
//Devuelve el desvanecido a la posicion 1 opaco
draw_set_alpha(1);
//Aumenta el desvanecido de 0.05 en adelante
current_alpha += 0.05;
//Si el transparentado llega a 1 sigue   a la sig room
	if(current_alpha >= 1){
		room_goto_next();
	}
}

/*
draw_sprite_ext(sprite que usaremos,frame que usaremos,
donde lo colocara(mitad de la pantalla usamos display get guid))
*/
