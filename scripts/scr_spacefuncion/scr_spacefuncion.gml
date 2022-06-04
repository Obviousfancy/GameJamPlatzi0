// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spacefuncion(){
/// @description //Prueba de textbox

var _text;
if(global.playerControl == true){
	//Si hay un NPC cerca
	if(nearbyNPC){
		if(nearbyNPC.myState == npcState.normal){
		//Si el jugador no tiene un item
		if(hasItem == noone || hasItem == undefined){
			_text = nearbyNPC.myText;
			if(!instance_exists(obj_text_box)){
			iii = instance_create_depth(x+115,y-80,-10000,obj_text_box);
			iii.textToShow = _text;	
			}
		}
		// If player has item (and it still exists)
			if (hasItem != noone && instance_exists(hasItem))
			{
				// If player has correct item
				if (hasItem.object_index == nearbyNPC.myItem)
				{
					_text = nearbyNPC.itemTextHappy;
					show_debug_message("Este es tu objeto");
										//sprite_index = spr_item_01green_done;
					// Check if we should remove item, mark NPC
					alarm[3] = 10;
				}
				// Or if player has incorrect item
				else
				{
					_text = nearbyNPC.itemTextSad;
					//_seq = nearbyNPC.sequenceSad;
				}
				// Create textbox
				if (!instance_exists(obj_text_box))
				{
					iii = instance_create_depth(nearbyNPC.x,nearbyNPC.y-30,-10000,obj_text_box);
					iii.textToShow = _text;
					//iii.sequenceToShow = _seq;
				}
			}

		}
		//Si el NPC is done
		if (nearbyNPC.myState == npcState.done)
		{
			_text = nearbyNPC.itemTextDone;
			if (!instance_exists(obj_text_box))
			{
				iii = instance_create_depth(nearbyNPC.x,nearbyNPC.y-30,-10000,obj_text_box);
				iii.textToShow = _text;
			}
		}
	}
 //If hay un item cerca
 if(nearbyItem && !nearbyNPC){
	//Si el jugador no tiene un item
	if(hasItem == noone || hasItem == undefined){
		//Le quitamos el control al usuario
		global.playerControl = false;
		myState = playerState.pickingUp;
		//Iniciamos la animacion de vuelta a cero cuando termine el control
		image_index = 0;
		//Asignamos el valor de lo que tengamos cerca
		//en la variable near
		hasItem = nearbyItem;
		carryLimit = hasItem.itemWeight * 0.1;
		//cambiamos el estado del item a agarrado o picking up
		with(hasItem){
			myState = itemState.taken;
		}

		audio_play_sound(picup_pickdown,0,false);
	}
 
 }
 // sI NO HAY UN NPC NI UN ITEM
 if (!nearbyItem && !nearbyNPC)
	{
		// Put down an item
		if (hasItem != noone)
		{
			myState = playerState.puttingDown;
			image_index = 0;
			global.playerControl = false;
			// Change state of item we were carrying
			with (hasItem)
			{
				
				putDownY = obj_firstplayer.y+5;
				myState = itemState.puttingBack;
			}
			// Play put-down sound
			audio_play_sound(picup_pickdown,1,0);
			// Reset item
			hasItem = noone;
		}
	}
}
	
}