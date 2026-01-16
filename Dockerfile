# 1. Usamos Nginx (el servidor web ligero)
FROM nginx:alpine

# 2. Copiamos tus archivos HTML dentro del servidor
COPY ./httpdocs /usr/share/nginx/html

# 3. Abrimos el puerto 80 (interno del contenedor)
EXPOSE 80
