FROM node:16
WORKDIR /home/salippu/Documents/projects/Blockchain/Rouhin/token_distribution_system_full_code
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 8081

CMD [ "npm", "run","server" ]
