FROM node:13.12.0-alpine as build
ENV NODE_ENV=prod
WORKDIR /app/build
COPY . .
RUN npm install --prod
RUN npm run build

expose 80
#nginx
FROM nginx:stable-alpine
COPY --from=build /app/build/* /usr/share/nginx/html/*
CMD ["node","App.js"]
