FROM maker2413/orgpublish:latest

RUN apk add \
    gcc \
    libc-dev

RUN rm -rf /opt/*

COPY install.el publish.el /opt/

RUN emacs --batch --load /opt/install.el

ENTRYPOINT ["emacs", "-Q", "--load", "/opt/install.el", "--script"]

CMD ["/opt/publish.el"]
