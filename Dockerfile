#stage 1
FROM node

WORKDIR /app
Copy package.json .
Copy yarn.lock .

RUN yarn install

copy . .

CMD ["yarn", "start"]