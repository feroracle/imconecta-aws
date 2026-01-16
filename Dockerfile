# Usamos la imagen base de PHP con Apache
FROM php:7.4-apache

# Copiamos TU código dentro de la carpeta pública del contenedor
COPY ./httpdocs /var/www/html/

# Le damos permisos al usuario www-data (Apache) para que pueda leerlos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Abrimos el puerto 80 del contenedor
EXPOSE 80
