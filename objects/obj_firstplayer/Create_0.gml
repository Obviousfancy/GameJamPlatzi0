 
  spd = 2; 
  hp = obj_game_controller.player_data[? "hp"]  ; 
  //state = scr_state_idle;  
  //scr_get_input();

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
  runSpeed = 0;
  runMax = 4;
  run = false;
  starDust = 0;
   
  // Player Sprite array [myState][dir]
// Idle
playerSpr[playerState.idle][0] = spr_main_char_idle_right;
playerSpr[playerState.idle][1] = spr_main_char_idle_up;
playerSpr[playerState.idle][2] = spr_main_char_idle_left;
playerSpr[playerState.idle][3] = spr_main_char_idle_down;

// Walking
playerSpr[playerState.walking][0] = spr_main_char_walk_right;
playerSpr[playerState.walking][1] = spr_main_char_walk_up;
playerSpr[playerState.walking][2] = spr_main_char_walk_left;
playerSpr[playerState.walking][3] = spr_main_char_walk_down;

//Running
playerSpr[playerState.running][0] = spr_main_char_running_right;
playerSpr[playerState.running][1] = spr_main_char_running_up;
playerSpr[playerState.running][2] = spr_main_char_running_left;
playerSpr[playerState.running][3] = spr_main_char_running_down;

// Picking up
playerSpr[playerState.pickingUp][0] = spr_main_char_pickup_right;
playerSpr[playerState.pickingUp][1] = spr_main_char_pickup_up;
playerSpr[playerState.pickingUp][2] = spr_main_char_pickup_left;
playerSpr[playerState.pickingUp][3] = spr_main_char_pickup_down;

// Carrying
playerSpr[playerState.carrying][0] = spr_main_char_carry_right;
playerSpr[playerState.carrying][1] = spr_main_char_carry_up;
playerSpr[playerState.carrying][2] = spr_main_char_carry_left;
playerSpr[playerState.carrying][3] = spr_main_char_carry_ldown;

// Idle while carrying
playerSpr[playerState.carryIdle][0] = spr_main_char_carry_idle_right;
playerSpr[playerState.carryIdle][1] = spr_main_char_carry_idle_up;
playerSpr[playerState.carryIdle][2] = spr_main_char_carry_idle_left;
playerSpr[playerState.carryIdle][3] = spr_main_char_carry_idle_down;

// Putting down
playerSpr[playerState.puttingDown][0] = spr_main_char_put_down_right;
playerSpr[playerState.puttingDown][1] = spr_main_char_put_down_up;
playerSpr[playerState.puttingDown][2] = spr_main_char_put_down_left;
playerSpr[playerState.puttingDown][3] = spr_main_char_put_down_down;


//Attacking
playerSpr[playerState.puttingDown][0] = spr_main_char_attacking_right;
playerSpr[playerState.puttingDown][1] = spr_main_char_attacking_up;
playerSpr[playerState.puttingDown][2] = spr_main_char_attacking_left;
playerSpr[playerState.puttingDown][3] = spr_main_char_attacking_down;


//h_dir = 1;
//dir_x = 1;



save_hp_to_controller = function(){
	obj_game_controller.player_data[? "hp"] = hp;
}
 
global.points=0;
global.power=false;
global.golpe=false;
