FROM node:12-alpine as todolist-example

LABEL maintainer="zefey <1076971426@qq.com>"

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --production

COPY . .

CMD ["node", "src/index.js"]
