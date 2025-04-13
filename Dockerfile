
FROM node:18-alpine
WORKDIR usr/src/app
COPY package.json /app/
RUN npm install
COPY . /app/
CMD ["npm", "start"]
