function PlayerStateFree(){
	// Movimento
	// lengthdir_x() função onde podemos inserir um comprimento e uma direção
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	
	PlayerCollision();
	
	// Atualiza o sprite
	// armazena o sprite que esta atualmente
	var _oldSprite = sprite_index
	if (inputMagnitude != 0)
	{
		direction = inputDirection; // direction variavel embutida que da pra usar com velocidade ou apenas armazena um numero
		sprite_index = spriteRun;
		
	}else sprite_index = spriteIdle;
	
	if (_oldSprite != sprite_index) localFrame = 0;
	
	// Atualizando Image Index
	PlayerAnimateSprite();
	
	// Attck key logic
	if (keyAttack)
	{
		state = PlayerStateAttack;
		stateAttack = AttackSword;
	}
	
	// Activate key logic
	if (keyActivate)
	{
		//1. Verifica se há uma entidade para ativar
		//2. Se não houver nada ou se houver algo, mas não tiver script - Roll!
		//3. Caso contrário para que haja algo como um script para ativar!
		//4. Se a coisa que ativamos for um NPC, faça-o virado para nós!
		
		/*
		Calcula a quantidade que tem que se mover ao longo do eixo x
		para mover 10 pixel em qualquer direção
		*/
		var _activateX = lengthdir_x(10, direction);
		var _activateY = lengthdir_y(10, direction);
		activate = instance_position(x+_activateX, y+_activateY, pEntity);
		
		if (activate == noone or activate.entityActivateScript == -1)
		{
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll
		}
		else
		{
			// Ativa a entidade
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			// Fazer um NPC ficar virado para o jogador
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR
				}
			}
		}
	}
}