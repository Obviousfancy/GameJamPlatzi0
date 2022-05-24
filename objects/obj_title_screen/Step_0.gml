/// @description Insert description here
// You can write your code in this editor
scr_get_input();

if(selected_option == 0){//new game
	//Si presionamos abajo la opcion seleccionada 
	if(down_tap){	
		selected_option = 1;
	}
	if(up_tap){	
		selected_option = 2;
	}
		if(continue_restart){
			room_goto(Room_03_Scene_Program);
		}
}else if(selected_option == 1){//exit
	if(down_tap){	
		selected_option = 2;
	}
	if(up_tap){	
		selected_option = 0;
	}
	if(continue_restart){
			game_end();
		}
}else if(selected_option == 2){//creditos
	if(down_tap){	
		selected_option = 0;
	}
	if(up_tap){	
		selected_option = 1;
	}
	if(continue_restart){
			instance_create_depth(x,y,-9999,obj_credits);
		}
}

/*if (pause && selected_option == 0) {
	// New game
 	file_delete("save _data.sav");
	room_goto_next();
} else if(pause && selected_option == 1) {
	// Continue
	room_goto_next();
} else if (pause && selected_option == 2) {
	// Exit
	game_end();
}*/

