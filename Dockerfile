FROM golang:1.12-alpine

LABEL maintainer="liu0013@gmail.com"

RUN apk update && apk add --no-cache bash curl
COPY wait-for-it.sh /bin/wait-for-it.sh 
RUN chmod +x /bin/wait-for-it.sh
WORKDIR /
ENTRYPOINT [ "/bin/bash" ]