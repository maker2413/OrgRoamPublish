FROM alpine:latest

RUN mkdir /opt/OrgFiles

WORKDIR /opt/OrgFiles

RUN apk add \
    emacs-nox \
    gcc \
    libc-dev \
    tree

COPY publish.el /opt

RUN emacs --batch --load /opt/publish.el
