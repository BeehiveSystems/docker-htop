FROM alpine:latest

LABEL contact@beehivesystems.io

RUN adduser dtop -s /sbin/nologin -D \
        && apk add -U --no-cache htop \
        && rm -rf /var/cache/apk/*

USER dtop

ENTRYPOINT ["htop"]
