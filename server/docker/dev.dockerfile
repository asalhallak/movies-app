FROM node:18.0.0

WORKDIR /dependencies

COPY *.json ./

RUN npm install

WORKDIR /app