FROM node:16-alpine AS build-env
WORKDIR /usr/src/app
COPY . .
RUN npm install

FROM node:16-alpine
WORKDIR /usr/src/app
COPY --from=build-env /usr/src/app/ .
RUN npm install --production && \
    adduser -D testuser
USER testuser
CMD node index.js
