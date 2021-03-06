FROM alpine:latest
MAINTAINER Timothy
RUN apk add --update ca-certificates
RUN mkdir -p /usr/local/godns
COPY godns /usr/local/godns
RUN chmod +x /usr/local/godns/godns
RUN rm -rf /var/cache/apk/*
WORKDIR /usr/local/godns
ENTRYPOINT ["./godns", "-d"]
