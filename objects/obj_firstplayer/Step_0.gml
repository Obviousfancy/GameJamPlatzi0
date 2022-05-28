if (global.golpe) exit;
scr_get_input();

scr_state_move();
//script_execute(state);
//scr_state_run();	
    
//Verificar la colision con NPC
nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);
	if nearbyNPC{
		// Pop up prompt
		if (npcPrompt == noone || npcPrompt == undefined)
		{
			npcPrompt = scr_show_prompt(nearbyNPC,nearbyNPC.x+50,nearbyNPC.y-20);
		}
	
		//Hara algo
		//show_debug_message("PLAYER found a NPC");
	}
	if !nearbyNPC{
		
		//Get rid of prompt
		scr_dismissprompt(npcPrompt,0);
		//Hara otra cosa
		//show_debug_message("PLAYER hasn't found a NPC");
	}

// Check for collision with Items
nearbyItem = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_item,false,false);
if (nearbyItem && !nearbyNPC)
{
	// Pop up prompt
	if (itemPrompt == noone || itemPrompt == undefined)
	{
		//show_debug_message("obj_player has found an item!");
		itemPrompt = scr_show_prompt(nearbyItem,nearbyItem.x+30,nearbyItem.y-70);
	}
}
if (!nearbyItem || nearbyNPC)
{
	// Get rid of prompt
	scr_dismissprompt(itemPrompt,1);
}

//If picking up an item
if(myState == playerState.pickingUp){
	if(image_index >= image_number -1){
		myState = playerState.carrying;
		global.playerControl = true;
		image_index = 0;
		show_debug_message("Lo agarraste");
	}
}


//Si dejo el item
if(myState == playerState.puttingDown){
	show_debug_message("Lo estas dejando");
	//Reinicia el tamaño
	carryLimit = 0;
		//Reinicia mi estado cuando la animacion finalice
		if(image_index >= image_number-1){
			myState = playerState.idle;
			global.playerControl = true;
			image_index = 0;
			show_debug_message("Lo dejaste");
		}
}

//Depth sorting
depth = -y; 

// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir_main];

//Pausa del juego
if( pause && !instance_exists(obj_pause)){
	 
	instance_create_depth(0,0,-9999,obj_pause);

}



if(hp<=0){

	room_goto(Room_Game_Over);
}

//show_debug_message(hp);
