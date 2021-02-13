FROM alpine

RUN apk add --update git-daemon && \
    apk add --update lighttpd && \
    rm -rf /var/cache/apk/*

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

ENTRYPOINT [ "lighttpd" ]
CMD ["-D", "-f", "/etc/lighttpd/lighttpd.conf"]
