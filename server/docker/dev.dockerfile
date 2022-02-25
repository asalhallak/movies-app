FROM node:10.15.1

WORKDIR /dependencies

COPY *.json ./

RUN npm install

WORKDIR /app