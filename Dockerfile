version: '3.8'

services:
  web:
    # Esta línea es la magia: Le dice que use el Dockerfile que ya creaste
    build: .
    # Aquí forzamos el puerto, ignorando lo que diga Coolify
    ports:
      - "8082:80"
    restart: always
