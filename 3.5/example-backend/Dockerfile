FROM golang:1.16
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost:5000
EXPOSE 8080
COPY . .
RUN go build
RUN adduser testuser
RUN chown testuser .
USER testuser
CMD ["./server"]
