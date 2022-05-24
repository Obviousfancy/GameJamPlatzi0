/// @description Seleccionar nueva dirección
//retroceder
image_xscale=sign(x);
hspeed=-hspeed;
vspeed=-vspeed;

//cambiar dirección
	if (hspeed==0) //velocidad horizontal
	{
		if random(3)<1 && place_free(x-1,y) //izquierda
		{
			hspeed=-v;
			vspeed=0;
			image_xscale=-1;
		}
		if random(3)<1 && place_free(x+1,y) //derecha 
		{
			hspeed=v;
			vspeed=0;
			image_xscale=1;
		}
	}
	else
	{
		if random(3)<1 && place_free(x,y-1) //arriba
		{
			vspeed=-v;
			hspeed=0;
		}
		if random(3)<1 && place_free(x,y+1) //abajo
		{
			vspeed=v;
			hspeed=0;
		}
	}

