FROM node:16-alpine as build-env
WORKDIR /usr/src/app
COPY . .
RUN npm install && \
    npm run build

FROM node:16-alpine
WORKDIR /usr/src/app
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install -g serve && \
    adduser -D testuser && \
    chown testuser . && \
    rm -rf /var/cache/apk/*
USER testuser
COPY --from=build-env /usr/src/app/build /usr/src/app/build
CMD ["serve", "-s", "-l", "5000", "build"]
