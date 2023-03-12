FROM alpine

LABEL maintainer="Lucas David Traverso <lucas6246@gmail.com>"

RUN apk add --no-cache esh

COPY ./src/esh_dir.sh /usr/local/bin/esh_dir.sh

WORKDIR /home/argocd/cmp-server/config/
COPY plugin.yaml ./

USER 999

CMD [/var/run/argocd/argocd-cmp-server]
