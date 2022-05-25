scr_get_input();


if(selected_option == 0){//pause
	//Si presionamos abajo la opcion seleccionada 
	if(down_tap){	
		selected_option = 1;
	}
	if(up_tap){	
		selected_option = 2;
	}
		if(pause){
			instance_destroy();
		}
}else if(selected_option == 1){//controls
	if(down_tap){	
		selected_option = 2;
	}
	if(up_tap){	
		selected_option = 0;
	}
	if(continue_restart){
			room_goto(Room_Controls);
		}
}else if(selected_option == 2){//restart
	if(down_tap){	
		selected_option = 0;
	}
	if(up_tap){	
		selected_option = 1;
	}
	if(continue_restart){
			game_restart();
		}
}
