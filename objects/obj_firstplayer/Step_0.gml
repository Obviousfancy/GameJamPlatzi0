if (global.golpe) exit;
scr_get_input();

script_execute(state);
scr_state_run();	
    
if( pause && !instance_exists(obj_pause)){
	 
	instance_create_depth(0,0,-9999,obj_pause);

}
/*
// Check for collision with Items
nearbyItem = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_item,false,false);
if (nearbyItem && !nearbyNPC)
{
	// Pop up prompt
	if (itemPrompt == noone || itemPrompt == undefined)
	{
		show_debug_message("obj_player has found an item!");
		itemPrompt = scr_showPrompt(nearbyItem,nearbyItem.x,nearbyItem.y-300);
	}
}
if (!nearbyItem || nearbyNPC)
{
	// Get rid of prompt
	scr_dismissPrompt(itemPrompt,1);
}
	
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
depth = -y; 

if(hp<=0){

	room_goto(Room_Game_Over);
}

show_debug_message(hp);
