FROM node:16
WORKDIR /usr/src/app
RUN npm install express
COPY server.js .
EXPOSE 8080
CMD [ "node", "server.js" ]
