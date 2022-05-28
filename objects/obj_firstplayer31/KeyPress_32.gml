/// @description //Prueba de textbox

var _text;
//Create a textbox si el NPC esta cerca
/*if(nearbyNPC && global.playerControl == true){
	_text = nearbyNPC.myText;
	if(!instance_exists(obj_text_box)){
		iii = instance_create_depth(x+115,y-80,-9998,obj_text_box);
		iii.textToShow = _text;
		
		Cuanto menor sea el numero en el -10000
		mas cerca de la camara estara
		
}

}*/
// If player has control
if (global.playerControl == true)
{
	// If near an NPC
	if (nearbyNPC)
	{
		// If NPC is still available
		/*if (nearbyNPC.myState == npcState.normal)
		{*/
			// If player does not have an item
			if (hasItem == noone || hasItem == undefined)
			{
				_text = nearbyNPC.myText;
				if (!instance_exists(obj_text_box))
				{
					iii = instance_create_depth(nearbyNPC.x,nearbyNPC.y-30,-10000,obj_text_box);
					iii.textToShow = _text;
				}
			}
		}
		
		
 }

	