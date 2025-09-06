FROM node:24-slim AS base

RUN corepack enable pnpm

WORKDIR /app

COPY package.json .

RUN npm i --no-package-lock 

COPY . .
RUN npm run build

# ENV NODE_ENV="production"
CMD [ "npm", "run", "start" ]
