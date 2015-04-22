#FROM eboraas/debian
FROM ubuntu:14.04

MAINTAINER VikingZ email:gleger@student.42.fr

RUN useradd -u 1000 mumble && \
    apt-get update && \
    apt-get install -y mumble-server && \
    mkdir /data && chown 1000 /data

VOLUME ["/data", "/Users/shared/mumble-server.ini"]

EXPOSE 64738 64738/udp

USER mumble

ENTRYPOINT ["/usr/sbin/murmurd", "-fg", "-ini", "/Users/shared/mumble-server.ini"]
