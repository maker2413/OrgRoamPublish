FROM alpine:latest

WORKDIR /opt/

RUN apk add \
    emacs-nox \
    gcc \
    libc-dev

COPY install.el .

RUN emacs --batch --load install.el
