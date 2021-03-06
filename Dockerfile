FROM node:alpine

## Update by pushing update to github on 05-Dec-20

RUN set -x \
    && npm install -g s3-proxy s3rver\
    && mkdir -p /data

ENTRYPOINT ["s3rver"]

CMD ["-d", "/data", "-p", "8080", "-h", "0.0.0.0"]
