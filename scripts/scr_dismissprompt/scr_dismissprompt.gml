// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dismissprompt(_whichPrompt,_toReset){
	if (_whichPrompt != undefined)
	{
		if (instance_exists(_whichPrompt))
		{
			// Tell prompt Object to fade out
			with (_whichPrompt)
			{
				fadeMe = "fadeOut";
			}
			// Reset appropriate prompt variable
			if (instance_exists(obj_firstplayer))
			{
				with (obj_firstplayer)
				{
					switch _toReset
					{
						// Reset npcPrompt
						case 0: npcPrompt = noone; break;
						case 1: itemPrompt = noone; break;
					}
				}
			}
		}
	}

}