# docker-nginx
nginx as reverse proxy

## build images
docker build -t sobel/nginx .

images are in docker hub via link  https://hub.docker.com/u/fallphenix


### build and running from source


```
 docker run --name nginx-dmz    -d  -p 8080:80  -v path-to\cache-nginx:/var/cache/nginx  -v path-to\logs-nginx:/var/log/nginx sobel/nginx
```
