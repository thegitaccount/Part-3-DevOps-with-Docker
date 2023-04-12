FROM node:16-alpine
WORKDIR /usr/src/app
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
COPY . .
RUN apk add --no-cache git && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D testuser && \
    chown testuser . && \
    rm -rf /var/cache/apk/*
USER testuser
CMD ["serve", "-s", "-l", "5000", "build"]
