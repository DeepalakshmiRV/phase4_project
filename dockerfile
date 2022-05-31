FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD npm run start

FROM nginx:alpine
COPY /dist/app-to-run-inside-docker /usr/share/nginx/html
EXPOSE 80
