 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	if (gamepad_is_connected(0)){
		 
	//Gamepad button input
	
	//Movimiento
	
	right =  +(gamepad_axis_value(0,gp_axislh)) || gamepad_button_check(0,gp_padr );
	left =  -(gamepad_axis_value(0,gp_axislh)) || gamepad_button_check(0,gp_padl);
	up  =   -(gamepad_axis_value(0,gp_axislv)) || gamepad_button_check(0,gp_padu);
	down =   +(gamepad_axis_value(0,gp_axislv))||gamepad_button_check(0,gp_padd);
	run = gamepad_button_check(0,gp_face3);
	//Acciones del personaje
	attack = gamepad_button_check(0,gp_face1) ;
	//Acciones en el menu
	pause = gamepad_button_check_pressed(0,gp_start);//Aqui solo queremos saber si se presiono una vez
	continue_restart = gamepad_button_check_pressed(0,gp_start);
	up_tap = gamepad_button_check_pressed(0,gp_padu);
	down_tap = gamepad_button_check_pressed(0,gp_padd);
	
	
	 }else{
	//Keyboard input
	
	//Movimiento
	right = keyboard_check(vk_right) || keyboard_check(ord("D")) ;
	left = keyboard_check(vk_left)|| keyboard_check(ord("A")) ;
	up = keyboard_check(vk_up) || keyboard_check(ord("W")) ;
	down = keyboard_check(vk_down) || keyboard_check(ord("S")) ;
	run = keyboard_check(vk_shift);
	
	//Acciones del personaje
	attack = keyboard_check(ord("J")) ;
	
	//Acciones en el menu
	pause = keyboard_check_released(vk_escape);
	continue_restart = keyboard_check_released(vk_enter);
	up_tap = keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) ;
	down_tap = keyboard_check_released(vk_down) || keyboard_check_released(ord("S")) ;
	 }
	/*hor = right - left;
	ver = down - up;*/
}