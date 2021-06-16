FROM alpine:3.7

RUN apk add --update bash tini

ARG INSERT_BUG=no
ENV SHELL=/bin/bash INSERT_BUG=${INSERT_BUG}

COPY . /app

RUN chmod +x /app/app.sh

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/app/app.sh"]