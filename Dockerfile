FROM maker2413/orgpublish:latest

RUN apk add \
    gcc \
    libc-dev

COPY install.el publish.el entrypoint.sh ./

RUN emacs --batch --load install.el

ENTRYPOINT ["./entrypoint.sh"]
