FROM nginx:mainline-alpine-slim
RUN apk  update 
RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*
RUN  apk add  busybox-extras
COPY www /usr/share/nginx/html
COPY conf /etc/nginx
WORKDIR /usr/share/nginx/html