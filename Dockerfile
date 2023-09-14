#stage 1
FROM node:18-alpine as builder
WORKDIR /app
Copy package.json .
copy yarn.lock .
RUN yarn install
copy . .
RUN yarn build

#stage 2

FROM nginx:1.19.0
WORKDIR /usr/share/nginx/html
run rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]