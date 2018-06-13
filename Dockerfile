FROM node:9.4.0-slim

MAINTAINER vojtech.v.portes@gmail.com

RUN mkdir -p /app/lib /app/static /app/views

WORKDIR /app

COPY application/ /app

RUN npm install

EXPOSE 5000

ENTRYPOINT ["node", "index.js"]