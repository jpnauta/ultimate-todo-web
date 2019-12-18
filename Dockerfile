FROM node:12-alpine

RUN apk --no-cache add autoconf automake bash g++ libc6-compat libjpeg-turbo-dev libpng-dev make nasm

ADD package.json .
ADD package-lock.json .
RUN npm i

ADD babel.config.js .
ADD app/ app/
ADD internals/ internals/
ADD server/ server/

CMD ["npm", "run", "start"]
