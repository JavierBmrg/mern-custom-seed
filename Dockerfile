FROM node:8.11.1-alpine
#ENV NODE_ENV develop
ARG NODE_ENV
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 13000
CMD npm start