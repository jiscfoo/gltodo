FROM alpine
RUN apk add perl perl-lwp-protocol-https perl-json perl-config-tiny

COPY gltodo /gltodo
RUN chmod +x /gltodo
WORKDIR /
ENTRYPOINT /gltodo
