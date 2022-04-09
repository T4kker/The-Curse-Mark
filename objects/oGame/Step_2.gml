/// @description Pausar Jogo
if (keyboard_check_pressed(vk_escape))
{
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused)
	{
		with (all){ // all seleciona todas as instâncias
			gamePausedImageSpeed = image_speed; // pega a velocidade da imagem de cada instância e armazena na variavel
			image_speed = 0;
		}
	}
	else{
		with (all){
			
			image_speed = gamePausedImageSpeed;
		}
	}
}