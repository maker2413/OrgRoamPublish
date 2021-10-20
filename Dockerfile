FROM alpine:latest

WORKDIR /opt/

RUN apk add \
    emacs-nox \
    gcc \
    libc-dev

COPY publish.el .

RUN emacs --batch --load publish.el
