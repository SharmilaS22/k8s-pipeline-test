FROM node:14.17.0-alpine
WORKDIR /app
RUN npm init -y
ADD package*.json ./
RUN npm install
ADD index.js ./
ENTRYPOINT node index.js