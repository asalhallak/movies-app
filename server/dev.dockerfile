FROM node:10.15.1

WORKDIR /dependencies

COPY *.json ./

RUN yarn install

WORKDIR /app