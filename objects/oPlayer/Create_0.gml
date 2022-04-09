state = PlayerStateFree;
stateAttack = AttackSword;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

// zera a velocidade da imagem
image_speed = 0;
// velocidade horizontal
hSpeed = 0;
// velocidade vertical
vSpeed = 0;
// define o quão rapido o personagem se move
speedWalk = 1.7;
speedRoll = 3.0;
// define a distancia que o pesonagem percorre em pixels
distanceRoll = 52;
// define a distancia do pulo do personagem
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 1.5;
z = 0;

// armazenando os sprites em variaveis
spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;
