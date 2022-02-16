FROM ubuntu:18.04

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
#
RUN npm install
RUN apt-get update && apt-get install -y java-1.8.0-openjdk-devel

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
