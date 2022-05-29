/// @description Dust cloud effect

// Create dust cloud
var _dustX, _dustY;
_dustX = obj_firstplayer.x-(ver*4);
_dustY = irandom_range(obj_firstplayer.y-10,obj_firstplayer.y+10);
if (run == true)
{
	// Create dust clouds only if moving
	if (hor != 0 || ver != 0)
	{
		instance_create_depth(_dustX,_dustY,depth+2,obj_dust);
	}
	// Reset Alarm
	alarm[2] = 8 + (1+carryLimit);
}
