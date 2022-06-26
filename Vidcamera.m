disp("Script de captura de imagen de video de webcam");
camara = videoinput('winvideo',1); %#2 indica que webcam se usa
% preview(camara); %vista previa de la webcam
pause(5); % pausa para estabilizar adquisición
foto = getsnapshot(camara); % foto en color RGB
imshow(foto); % muestra la imagen capturada en una ventana
imsave % salva la imagen en una ubicación a elegir
