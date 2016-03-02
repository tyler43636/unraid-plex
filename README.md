# Application
[Plex](https://plex.tv/)

# Usage
```
docker run -d \
  --net="host" \
  --name=plex \
  -v /Users/tyler/Desktop/media:/media \
  -v /Users/tyler/Desktop/config:/config \
  -v /etc/localtime:/etc/localtime:ro \
  -e PUID=501 \
  -e PGID=20 \
  tyler43636/unraid-plex
```
