FROM node:latest

WORKDIR /app/
ADD ./ /app/

RUN npm install -g pnpm
RUN pnpm install --loglevel verbose

EXPOSE 5173