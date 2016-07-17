# docker build --rm=true -t lgtm/docs .
# docker run --rm -p 8080:80 lgtm/docs

FROM alpine:3.4
EXPOSE 80

RUN apk add --update lighttpd && rm -rf /var/cache/apk/*
ADD public /var/www
RUN echo -e "include \"mime-types.conf\"\nserver.username = \"lighttpd\"\nserver.groupname = \"lighttpd\"\nserver.document-root = \"/var/www\"\nserver.indexfiles = (\"index.html\")" > /etc/lighttpd/lighttpd.conf

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
