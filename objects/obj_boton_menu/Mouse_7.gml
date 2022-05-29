/// @description Insert description here
// You can write your code in this editor
if texto == "New Game"{
	
	/*if(file_existance){
	texto = "Continue";
	}else{
	texto = "New Game";
	}*/
	
	room_goto(Room_03_Scene_Program);
}

if texto == "Credits"{
	
	
	instance_create_depth(x,y,-9999,obj_credits);
}

if texto == "Exit"{
	
	
	game_end();
}
