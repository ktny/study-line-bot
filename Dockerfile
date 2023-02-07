FROM node:18.14.0-bullseye-slim

COPY package*.json ./
RUN npm ci

COPY index.js .

EXPOSE 3000

CMD [ "node", "index.js" ]
