FROM alpine

MAINTAINER Lucas David Traverso <lucas6246@gmail.com>

RUN apk add --no-cache esh

COPY ./src/esh_dir.sh /usr/local/bin/esh_dir.sh
