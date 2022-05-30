/// @description Insert description here
// You can write your code in this editor
if texto == "New Game"{
	
	/*if(file_existance){
	texto = "Continue";
	}else{
	texto = "New Game";
	}*/
	
	room_goto_next();
}

if texto == "Credits"{
	
	
	instance_create_depth(x,y,-9999,obj_credits);
}

if texto == "Exit"{
	
	
	game_end();
}
