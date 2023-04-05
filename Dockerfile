FROM ubuntu:18.04

LABEL Version = "1.0"
LABEL Descripcion = "Ejercicio dockerfile y quasar"
LABEL Autor = "Kevin Dominguez"

WORKDIR /home

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx && \
    apt-get install -y git && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_16.x | tac | tac | bash - && \
    apt-get install -y nodejs && \
    npm install -g @quasar/cli && \
    git clone https://github.com/ArmandoDominguezz/Portafolio2023.git && \
    cd /home/Portafolio2023 && \
    git checkout master && \
    npm install && \
    quasar build && \
    cp -r dist/spa/* /var/www/html && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

    EXPOSE 80

    CMD ["nginx", "-g", "daemon off;"]
