FROM node:lts-alpine

RUN apk add -U entr ruby python make gcc g++

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN ["npm", "i", "-g", "npm"]

RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]