FROM alpine:latest

RUN apk --no-cache add bash fish

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
