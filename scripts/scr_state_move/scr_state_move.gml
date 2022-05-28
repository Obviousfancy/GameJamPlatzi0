// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_move(){
	if(global.playerControl == true){
	hor = right - left;
	ver = down - up;
	}
	if(global.playerControl == false){	
		hor = 0;
		ver = 0;
	}
	
	
	if(hor !=0 || ver != 0){
		
	
	dire = point_direction(0,0,hor,ver);
	if !collision_point(x+hor,y,obj_par_environment,true,true){
	x += lengthdir_x(spd,dire);
	}
	if !collision_point(x,y+ver,obj_par_environment,true,true){
	y += lengthdir_y(spd,dire);
	}
	
	
	scr_look_char(dire);
	}
	
	
	if(!right && !left && !up && !down){
		
		myState = playerState.idle;
			
		/*switch dir_main{
			case 0: sprite_index = spr_main_char_idle_right; break;
			case 1: sprite_index = spr_main_char_idle_up; break;
			case 2: sprite_index = spr_main_char_idle_left; break;
			case 3: sprite_index = spr_main_char_idle_down; break;
			
		}*/
	}
	
//Verificar la colision con NPC
nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);
	if nearbyNPC{
		// Pop up prompt
	if (npcPrompt == noone || npcPrompt == undefined)
	{
		npcPrompt = scr_show_prompt(nearbyNPC,nearbyNPC.x+50,nearbyNPC.y-20);
	}
	
		//Hara algo
		show_debug_message("PLAYER found a NPC");
	}
	if !nearbyNPC{
		
		//Get rid of prompt
		scr_dismissprompt(npcPrompt,0);
		//Hara otra cosa
		show_debug_message("PLAYER hasn't found a NPC");
	}
	
// Check for collision with Items
nearbyItem = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_item,false,false);
if (nearbyItem && !nearbyNPC)
{
	// Pop up prompt
	if (itemPrompt == noone || itemPrompt == undefined)
	{
		show_debug_message("obj_player has found an item!");
		itemPrompt = scr_show_prompt(nearbyItem,nearbyItem.x+30,nearbyItem.y-90);
	}
}
if (!nearbyItem || nearbyNPC)
{
	// Get rid of prompt
	scr_dismissprompt(itemPrompt,1);
}
/*	
// If picking up an item
if (myState == playerState.pickingUp)
{
	if (image_index >= image_number-1)
	{
		myState = playerState.carrying;
		global.playerControl = true;
	}
}
	
// If putting down an item
if (myState == playerState.puttingDown)
{
	// Reset weight
	carryLimit = 0;
	// Reset my state once animation finishes
	if (image_index >= image_number-1)
	{
		myState = playerState.idle;
		global.playerControl = true;
	}
}*/
	//Con sprite index le asignaremos una animacion a nuestro personaje	 
}