FROM node:12-alpine

EXPOSE 3000

ENV APP minigame

RUN adduser -S "${APP}"
WORKDIR /home/"${APP}"
USER "${APP}"

COPY package.json package-lock.json ./

RUN npm install
COPY . .

CMD ["node", "app.js"]
