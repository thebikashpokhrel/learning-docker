FROM node:21-alpine3.18

WORKDIR /app

COPY . .

CMD ["npm","run","start:dev"]

