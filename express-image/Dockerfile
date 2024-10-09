FROM node:21-alpine3.18

WORKDIR /expressapp

COPY package.json .

RUN npm install

COPY . .

CMD ["npm","run","start:dev"]

