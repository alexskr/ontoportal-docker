# syntax=docker/dockerfile:1
FROM alpine:latest
MAINTAINER alexskr@stanford.edu
ENV PATH="/opt/mgrep:$PATH"
RUN apk --no-cache add libstdc++ libc6-compat tini
RUN mkdir -p /srv/mgrep
#WORKDIR /opt/mgrep
WORKDIR /
COPY mgrep /usr/local/bin
COPY data /srv/mgrep
COPY /start-mgrep.sh /
EXPOSE 55555
ENTRYPOINT ["/sbin/tini", "--", "/start-mgrep.sh"]
