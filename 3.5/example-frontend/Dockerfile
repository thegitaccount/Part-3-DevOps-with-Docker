FROM node:16
WORKDIR /usr/src/app
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
COPY . .
RUN npm install && npm run build
RUN npm install -g serve
RUN adduser testuser
RUN chown testuser .
USER testuser
CMD ["serve", "-s", "-l", "5000", "build"]
