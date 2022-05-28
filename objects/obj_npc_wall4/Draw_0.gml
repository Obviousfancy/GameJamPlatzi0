/// @description Color de npc

//Creamos la sombra de nuestro personaje

shader_set(shd_npcs);//Inicializa el shader que nosotros le indicamos dentro del parentesis
draw_sprite_ext(sprite_index,image_index,x-2,y-3,image_xscale,1,0,-1,0.5);
shader_reset();//Finaliza el pintado del shader en el personaje


/*shader_set(shd_shadow);//Inicializa el shader que nosotros le indicamos dentro del parentesis
draw_sprite_ext(sprite_index,image_index,x-2,y-3,image_xscale,1,0,-1,0.5);
shader_reset();//Finaliza el pintado del shader en el personaje
*/

//Dibujamos la sombra de nuestro personaje
//draw_self();//Pinte el mismo objeto con todas las propiedades que tiene

