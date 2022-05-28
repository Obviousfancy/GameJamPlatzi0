/// @description Poder para destruir enemigos
alarm[0]=room_speed*5;
global.power=true;

with(obj_enemy)
{
	sprite_index=spr_enemy_weak;
	v=2;
};

with(other)
{
	instance_destroy();
}



