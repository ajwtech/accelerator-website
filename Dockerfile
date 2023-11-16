
FROM node:latest

RUN apt-get update && \
    apt-get install -y hugo && \
    npm install -g yarn gulp && \
    yarn global add gulp-cli

WORKDIR /app

COPY . .

RUN yarn install

EXPOSE 7000 

CMD ["gulp"]
