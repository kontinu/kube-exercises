FROM alpine:3.7

RUN apk add --update bash tini

ENV SHELL=/bin/bash

COPY . /app

RUN chmod +x /app/app.sh

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/app/app.sh"]