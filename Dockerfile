FROM alpine:3

RUN apk add --no-cache bash
ADD ./scripts /scripts

