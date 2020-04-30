FROM node:10
WORKDIR /usr/src/app

COPY ./package.json ./
RUN npm install && npm install -g typescript tsc-watch
CMD tsc-watch index.ts --outDir ./dist --onSuccess "node --inspect=0.0.0.0:9229 ./dist/index.js"