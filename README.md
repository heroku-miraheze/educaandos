# educaandos
Imagen de Docker de EducaAndOS, para los colegios de la Junta de Andalucía.

Para acceder al sistema operativo, abre el puerto 5900, y pon el usuario root y la contraseña educaandos para acceder al VNC.

Para ejecutar, haz lo siguiente:

docker run -p 5900:5900 -d --restart always joaquinito2051/educaandos

Se actualiza cuándo hay paquetes que actualizar.
