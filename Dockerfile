FROM node:13.12.0-alpine
ENV NODE_ENV=prod
WORKDIR /usr/app
COPY . .
RUN npm install --prod
RUN npm run build
