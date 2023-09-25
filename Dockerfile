#stage 1
FROM node

WORKDIR /app

copy ./app/ .

RUN yarn install

CMD ["yarn", "start"]