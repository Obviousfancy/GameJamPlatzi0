/// @description Draw textbox

//Dibujamos la caja de texto

draw_self();
//
//Creamos el texto colocado el text to show en el create
draw_set_font(font_textbox);//Dibujado en fuente
//draw_set_color(c_black);//Eleccion de color
draw_set_halign(fa_center);//Alineacion horizontal
draw_set_valign(fa_middle);//Alineacion vertical
//draw_text(x,y,textToShow);//Dibujamos el texto
draw_text_ext_color(x,y,textToShow,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);