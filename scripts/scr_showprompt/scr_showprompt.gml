// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_showprompt(_object,_x,_y){
	if (instance_exists(_object))
	{
		if (!instance_exists(obj_textbox) && !instance_exists(obj_prompt))
		{
			if (obj_player.myState != playerState.puttingDown)
			{
				iii = instance_create_depth(_x,_y,-10000,obj_prompt);
				return iii;
			}
		}
	}

}