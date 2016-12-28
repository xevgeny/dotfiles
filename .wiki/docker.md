# Docker

## Remove docker images by name
```
docker images | grep "zeppelin" | awk '{print $3}' | xargs docker rmi
```
