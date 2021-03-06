FROM node:erbium

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . . 

EXPOSE 80

CMD ["node", "./node_modules/http-server/bin/http-server", "--log-ip", "-p", "80"]