FROM golang:alpine as build-env
WORKDIR /usr/src/app
COPY . .

RUN go build && \
    adduser -D testuser && \
    chown testuser .

FROM scratch
WORKDIR /usr/src/app
COPY --from=build-env /usr/src/app/server /usr/src/app/server
COPY --from=build-env /etc/passwd /etc/passwd
ENV REQUEST_ORIGIN=http://localhost:5000
EXPOSE 8080
USER testuser
CMD ["./server"]
