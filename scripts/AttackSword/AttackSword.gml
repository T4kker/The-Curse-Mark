function AttackSword(){
	if (sprite_index != sPlayerAttackSword)
	{
		sprite_index = sPlayerAttackSword;
		localFrame = 0;
		image_index = 0;
	}
	
	// Atualiza o sprite
	PlayerAnimateSprite();
	
	if (animationEnd)
	{
		state = PlayerStateFree;
		animationEnd = false;
	}
}