FROM node:13.12.0-alpine
ENV NODE_ENV=prod
WORKDIR /app
COPY . .
RUN npm install --prod
RUN npm run build
