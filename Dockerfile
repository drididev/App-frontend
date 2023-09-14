#stage 1
FROM node:18-alpine 

WORKDIR /app
Copy package.json .
Copy yarn.lock .

RUN yarn install

copy . .

CMD ["yarn", "start"]