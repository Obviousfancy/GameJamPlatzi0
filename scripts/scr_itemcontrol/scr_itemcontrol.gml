// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_itemPosition(){
	 var _x,_y,_depth;
	if (instance_exists(obj_firstplayer))
	{
		switch obj_firstplayer.dir_main
		{
			case 0:
			{ // right
				_x = obj_firstplayer.x+30;
				_y = obj_firstplayer.y-3;
				_depth = obj_firstplayer.depth-2;
	
			}; break;
			
			case 1:
			{ // up
				_x = obj_firstplayer.x-1;
				_y = obj_firstplayer.y-4;
				_depth = obj_firstplayer.depth+2;
		
			}; break;
			
			case 2:
			{ // left 
				_x = obj_firstplayer.x-30;
				_y = obj_firstplayer.y-3;
				_depth = obj_firstplayer.depth-2;
		
			}; break;
			
			case 3:
			{ // down
				_x = obj_firstplayer.x-1;
				_y = obj_firstplayer.y+20;
				_depth = obj_firstplayer.depth-2;
			}; break;
		}
		
		return [_x, _y, _depth];
	}

}