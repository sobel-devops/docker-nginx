# docker-nginx
nginx as reverse proxy

## build images
docker build -t sobel/nginx .

images are in docker hub via link  https://hub.docker.com/u/fallphenix


### build and running from source

creating network for the stack
```
docker network create infra-net
```
running the fpm server with alias name "php-fpm-host" for apache to connect in this
```
docker run -d  -p 9000:9000 --network infra-net --network-alias php-fpm-host --name php-fpm   sobel/php-fpm
```
running the apache server with sites-enabled folder : 

```
 docker run --name nginx-dmz    -d  -p 8080:80  -v path-to\cache-nginx:/var/cache/nginx  -v path-to\logs-nginx:/var/log/nginx sobel/nginx
```
