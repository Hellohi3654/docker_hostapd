FROM alpine:edge

LABEL version="2.11-dev"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="hostapd"
LABEL usage="https://github.com/J-Siu/docker_hostapd/blob/master/README.md"
LABEL description="Docker - hostapd"

COPY archive.tgz /

RUN apt update && apt upgrade -y && apt install tar -y && tar -xzf archive.tgz && cp  &&

COPY docker-compose.yml env /

CMD ["hostapd","/hostapd.conf"]
