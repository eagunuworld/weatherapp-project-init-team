FROM node:13.12.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm build

COPY . .

CMD [ "node" ] 