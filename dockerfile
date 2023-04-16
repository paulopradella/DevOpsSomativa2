#Imagem base
FROM ubuntu:latest
#Instala dependencias
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html
EXPOSE 80
# Iniciando o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]