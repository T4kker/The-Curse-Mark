/// @description Inicializar e Globals
randomize() // Função que altera a semente aleatoria do jogo

//global.gameSaveSlot = 0;
global.gamePaused = false;
global.textSpeed = .75;

global.iCamera = instance_create_layer(0,0,layer,oCamera);


surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);