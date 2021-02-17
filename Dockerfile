FROM node:14.15.5-alpine

WORKDIR /usr/src/app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./
RUN yarn --version

COPY . ./

CMD ["yarn", "start"]