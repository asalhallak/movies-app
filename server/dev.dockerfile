FROM node:10.15.1

RUN npm install -g yarn

WORKDIR /dependencies

COPY *.json ./

RUN yarn install

WORKDIR /app