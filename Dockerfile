FROM ubuntu
MAINTAINER cfreijanes (cfreijanes@gmx.fr)
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
#ADD static-website-example/ /usr/share/nginx/html/
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]

