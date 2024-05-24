FROM node:lts-buster

WORKDIR /bernal_pablo_site/

COPY public/ /bernal_pablo_site/public
COPY src/ /bernal_pablo_site/src
COPY package.json /bernal_pablo_site/

RUN npm install

CMD ["npm", "start"]