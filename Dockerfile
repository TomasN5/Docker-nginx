# Version 2 del Dockerfile

FROM nginx:latest

LABEL description="Contenedor Nginx personalizado con volumen persistente"

# Copiar archivos de configuración de Nginx

COPY nginx.conf /etc/nginx/nginx.conf

# Crear volumen persistente para el archivo index.html

VOLUME /usr/share/nginx/html

# Copiar el archivo index.html inicial

COPY index.html /usr/share/nginx/html

# Expone el puerto 8080

EXPOSE 8080