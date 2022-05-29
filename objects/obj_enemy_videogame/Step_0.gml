depth = -y; //Le da profundidad a nuestro personaje dependiendo cual estemos pasando sobre el podremos pasarle por detras o por delante
script_execute(state);

if(hp_enemy<=0)
{
	instance_destroy();
instance_create_layer(1310,395,"Instances",obj_ending_sensor);
}



