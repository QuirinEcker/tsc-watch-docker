FROM node:10
WORKDIR /usr/src/app
ENV SRC_FILE=index.ts
COPY ./package.json ./
RUN npm install && npm install -g typescript tsc-watch
CMD tsc-watch ${SRC_FILE} --outDir ./dist --onSuccess "node --inspect=0.0.0.0:9229 ./dist/index.js"