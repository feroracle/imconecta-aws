# Usamos Nginx, que es el estándar para webs estáticas (muy ligero)
FROM nginx:alpine

# Copiamos tu carpeta httpdocs a la carpeta donde Nginx busca los archivos
COPY ./httpdocs /usr/share/nginx/html

# Exponemos el puerto 80 (el estándar de la web)
EXPOSE 80
