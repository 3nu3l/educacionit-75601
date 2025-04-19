FROM node:18.9.1-alpine3.15

WORKDIR /app

COPY package.json .

RUN npm install

COPY index.js .

EXPOSE 3000

CMD ["npm", "start"]