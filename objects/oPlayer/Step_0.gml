// PEGANDO AS ENTRADAS DO JOGADOR
// checa se a tecla estiver pressionada ou não retornando true ou false
// keyLeft = keyboard_check(ord("A")); para usar as letras em vez das setas
// keyLeft = keyboard_check(vk_left) or keyLeft = keyboard_check(ord("A")); checa os dois juntos
// or e || fazem a mesma coisa
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
// checa se a tecla foi pressionada ou não
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("Q"));
keyItem = keyboard_check_pressed(vk_control);
// inputDirection armazena o angulo
// point_direction() função que conecta duas coordenadas e dira o angulo entre essas duas coordenadas
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
// retorna true ou false
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

// executa o script
if (!global.gamePaused)script_execute(state);

depth = -bbox_bottom;