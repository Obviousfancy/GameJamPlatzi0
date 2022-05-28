  /// @Sorting and other
  
  
//Dept, animation
switch myState{
	case itemState.idle:{
		depth =-y;
	};break;
	
	//Si tomamos el objeto
	case itemState.taken:{
		//sigue la position del jugador
		var _result = scr_itemPosition();
		x = _result[0];
		y = _result[1];
		depth = _result[2];
	}; break;
	case itemState.puttingBack:{
		y = putDownY;
		myState = itemState.idle;
	}; break;

} 
