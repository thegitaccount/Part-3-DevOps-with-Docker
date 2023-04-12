FROM node:16
WORKDIR /usr/src/app
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
COPY . .
RUN npm install && npm run build && \
npm install -g serve && \
adduser testuser && \
chown testuser . && \
rm -rf /var/lib/apt/lists/* && \
apt-get purge -y --auto-remove
USER testuser
CMD ["serve", "-s", "-l", "5000", "build"]
