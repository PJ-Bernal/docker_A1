npx create-react-app bernal_pablo_site
cd assignment_11
npm start

`FROM node:lts-buster`
`#WORKDIR /bernal_pablo_site/`
COPY public/ /bernal_pablo_site/public
COPY src/ /bernal_pablo_site/src
COPY package.json /bernal_pablo_site/
RUN npm install
CMD ["npm", "start"]

docker image build -t bernal_pablo_image:latest .

docker run -dp 7775:3000 --name react-example-container bernal_pablo_image:latest
