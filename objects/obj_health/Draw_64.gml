/// @description barra
draw_healthbar(16,16,200,32,health,c_black,c_red,c_lime,0,true,true);
//argumentos son posición inicial, posición final, vida, 
//color de fondo, de la barra cuando se está acabando y cuando está llena
//dirección, mostrar fondo y borde?
if (room==Room_05_Scene_Videogames) && instance_exists(obj_enemy_videogame)
{
	draw_healthbar(884,30,900,214,obj_enemy_videogame.hp_enemy,c_black,c_red,c_lime,3,true,true);
}

