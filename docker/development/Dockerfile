FROM node:lts-alpine

RUN apk add --update --no-cache ruby python3 make gcc g++ shadow && \
    ln -sf python3 /usr/bin/python

RUN npm install --global npm

ARG UID
ARG GID

RUN groupmod -g $GID node && \
    usermod -u $UID node

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]

USER node

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
