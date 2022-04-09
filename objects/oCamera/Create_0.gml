/// @description Configurar Câmera
cam = view_camera[0]; // obtém id da câmera
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
// coordenada x e y para aonde a camera esta indo
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;