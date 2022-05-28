/// @description Variables and setup

//Textbox variables

textToShow = "Some";
textWidth =  13;//Cambiar esto para el tamaño de texto
lineHeight = 10;//Cambiar esto para las lineas de texto
fadeMe = 0;
fadeSpeed = 0.1;
image_alpha = 0;
global.playerControl = false;

//Play UI sound
//audio_play_sound();

//Dismiss any visible prompts
scr_dismissprompt(obj_prompt,0);

//Movimiento del cuadro de dialogo
shift = 1;
alarm[1] = 10;