FROM docker.io/ubuntu:latest

LABEL maintainer="admin"

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "Welcome to our homepage created using Dockerfile" > /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
