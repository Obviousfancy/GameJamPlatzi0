/// @description Insert description here
// You can write your code in this editor
if(file_exists("save_data.sav")){
	player_data = ds_map_secure_load("save_data.sav");//Secure load lo que hara sera descomprimir el archivo dsmap y leer el contenido
}else{
player_data = ds_map_create();
//ds_map_add(player_data,"hp",100);
player_data[? "hp"] = 100;
player_data[? "points"]=0;
//}
