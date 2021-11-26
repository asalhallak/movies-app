FROM node:10.15.1 as builder

WORKDIR /app

COPY *.json ./

RUN yarn install

COPY . .

RUN npm run build

FROM nginx:1.20.2

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build/ .
COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf

