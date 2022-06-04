scr_get_input();


if(selected_option == 0){//pause
	//Si presionamos abajo la opcion seleccionada 
	if(down_tap){	
		selected_option = 1;
	}
	if(up_tap){	
		selected_option = 2;
	}
		if(pause || continue_restart){
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
			instance_destroy(obj_pause);
			instance_create_depth(x,y,-9999,obj_controles);
		}
}else if(selected_option == 2){//restart
	if(down_tap){	
		selected_option = 0;
	}
	if(up_tap){	
		selected_option = 1;
	}
	if(continue_restart){
			//game_restart();
			room_goto(Room_03_Scene_Program);
		}
}
