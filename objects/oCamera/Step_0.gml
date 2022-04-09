/// @description Atualizar Camera

// Atualizar Destino
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Atualiza a Posição do Objeto
x += (xTo - x) / 15;
y += (yTo - y) / 15;

// Manter o Centro da Camera dentro da sala
// clamp função que permite colocar um valor e um minimo e um maximo e mantem o valor entre esses dois numeros
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

// Screenshake
// ramdom_range pega dois valores e lhe dá um número aleatório de volta entre eles
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);