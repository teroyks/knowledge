# Docker and Docker-compose

## Clean Up System

### List and Remove Images

```shell
docker images
docker rmi Image
```

### Force Image Rebuild

Prune removes dangling images.

```shell
docker system prune
docker-compose build --no-cache
```

### Full Cleanup

Remove (pretty much) everything: stopped containers, volumes, networks & images not used by a container

```shell
docker system prune -a
```
