// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_attack(){
	sprite_index = spr_main_char_attacking;
	var bullet = instance_create_layer(x+lengthdir_x(10,dir_x),y,"Instances",obj_main_char_bullet);
	bullet.dir = point_direction(x,y,obj_enemy_videogame.x,obj_enemy_videogame.y);
}