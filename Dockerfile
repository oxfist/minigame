FROM node:12-alpine

ENV APP minigame

RUN adduser -S "${APP}"
WORKDIR /home/"${APP}"
USER "${APP}"

COPY package.json package-lock.json ./

RUN npm install
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
