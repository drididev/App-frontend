#stage 1
FROM node:20-alpine

ENV APP=/app

WORKDIR ${APP}

RUN yarn install

COPY ${APP}/. ${APP}

CMD ["yarn", "start"]