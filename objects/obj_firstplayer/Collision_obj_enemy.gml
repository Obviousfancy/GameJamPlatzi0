/// @description golpe o ataque?

if(other.sprite_index==spr_enemy_weak)
{
	global.points+=100;
	
	with(other)
	{
		x=xstart;
		y=ystart;
		v=4;
		sprite_index=spr_enemy;
	}
}
else
if (global.golpe==false)
{
	health-=20;
	sprite_index=spr_main_char_dead;
	global.golpe=true;
}


