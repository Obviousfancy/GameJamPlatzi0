 
  spd = 1; 
  hp = obj_game_controller.player_data[? "hp"]  ; 
  
  /*
  //Variables para los items
  
  */
  dir_main = 3;
  nearbyNPC = noone;
  lookRange = 30;
  npcPrompt = noone;
  hasItem = noone;
  hasItemX = x;
  hasItemY = y;
  nearbyItem = noone;
  itemPrompt = noone;
  carryLimit = 0;
  myState = playerState.idle;
  
  
  // Player Sprite array [myState][dir]
// Idle
playerSpr[playerState.idle][0] = spr_player_idle_right;
playerSpr[playerState.idle][1] = spr_player_idle_up;
playerSpr[playerState.idle][2] = spr_player_idle_left;
playerSpr[playerState.idle][3] = spr_player_idle_down;

// Walking
playerSpr[playerState.walking][0] = spr_player_walk_right;
playerSpr[playerState.walking][1] = spr_player_walk_up;
playerSpr[playerState.walking][2] = spr_player_walk_left;
playerSpr[playerState.walking][3] = spr_player_walk_down;

// Picking up
playerSpr[playerState.pickingUp][0] = spr_player_pickUp_right;
playerSpr[playerState.pickingUp][1] = spr_player_pickUp_up;
playerSpr[playerState.pickingUp][2] = spr_player_pickUp_left;
playerSpr[playerState.pickingUp][3] = spr_player_pickUp_down;

// Carrying
playerSpr[playerState.carrying][0] = spr_player_carry_right;
playerSpr[playerState.carrying][1] = spr_player_carry_up;
playerSpr[playerState.carrying][2] = spr_player_carry_left;
playerSpr[playerState.carrying][3] = spr_player_carry_down;

// Idle while carrying
playerSpr[playerState.carryIdle][0] = spr_player_carryIdle_right;
playerSpr[playerState.carryIdle][1] = spr_player_carryIdle_up;
playerSpr[playerState.carryIdle][2] = spr_player_carryIdle_left;
playerSpr[playerState.carryIdle][3] = spr_player_carryIdle_down;

// Putting down
playerSpr[playerState.puttingDown][0] = spr_player_putDown_right;
playerSpr[playerState.puttingDown][1] = spr_player_putDown_up;
playerSpr[playerState.puttingDown][2] = spr_player_putDown_left;
playerSpr[playerState.puttingDown][3] = spr_player_putDown_down;
state = scr_state_idle;
 
//h_dir = 1;
dir_x = 1;



save_hp_to_controller = function(){
	obj_game_controller.player_data[? "hp"] = hp;
}
 
global.points=0;
global.power=false;
global.golpe=false;
