FROM ubuntu
WORKDIR /bartolome/docker/

MAINTAINER bartolome <kcabartolome@gmail.com>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update Packages
RUN apt update; apt dist-upgrade -y

# Install Apache (Web)
RUN apt install apache2 -y; apt install apache2-utils -y

# Install DB server
RUN apt install mariadb-server -y

# Set Entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND: mysql -D FOREGROUND
