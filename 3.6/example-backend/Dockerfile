FROM golang:1.16
WORKDIR /usr/src/app
ENV REQUEST_ORIGIN=http://localhost:5000
EXPOSE 8080
COPY . .
RUN go build && \
adduser testuser && \
chown testuser . && \
rm -rf /var/lib/apt/lists/* && \
apt-get purge -y --auto-remove
USER testuser
CMD ["./server"]
