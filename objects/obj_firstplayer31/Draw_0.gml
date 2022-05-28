//Creamos la sombra de nuestro personaje

//Inicializa el shader que nosotros le indicamos dentro del parentesis
shader_set(shd_shadow);

draw_sprite_ext(sprite_index,image_index,x-2,y-3,image_xscale,1,0,-1,0.5);

//Finaliza el pintado del shader en el personaje
shader_reset();

//Dibujamos la sombra de nuestro personaje

//Pinte el mismo objeto con todas las propiedades que tiene
draw_self();
