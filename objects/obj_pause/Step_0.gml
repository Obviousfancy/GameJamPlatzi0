scr_get_input();

if(selected_option == 0){//continue
	if(down_tap ||up_tap ){	
		selected_option = 1;	
	}
		if(pause){
			instance_destroy();
		}
}else if(selected_option == 1){//restart
	if(down_tap ||up_tap){	
		selected_option = 0;
	}
	if(continue_restart){
			game_restart();
		}
}
