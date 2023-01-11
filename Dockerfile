FROM alpine3.17

RUN apk --no-cache add bash fish

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
