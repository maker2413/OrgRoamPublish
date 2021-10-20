FROM alpine:latest

RUN mkdir /opt/OrgFiles

WORKDIR /opt/OrgFiles

RUN apk add \
    emacs-nox \
    gcc \
    libc-dev

COPY publish.el /opt

COPY entrypoint.sh /opt

RUN emacs --batch --load /opt/publish.el

ENTRYPOINT ["/opt/entrypoint.sh"]
