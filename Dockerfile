FROM node:19-alpine3.16

WORKDIR /app

COPY package.json .

RUN npm i

RUN npm install -g typescript

COPY . . 

EXPOSE 5173

CMD ["npm","run","dev"]