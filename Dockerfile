# Use an official Node.js base image

FROM node:18
 
# Create and set the app directory

WORKDIR /usr/src/app
 
# Copy package files and install dependencies

COPY package*.json ./

RUN npm install
 
# Copy the rest of your application

COPY . .
 
# Expose port (change if your app runs on a different port)

EXPOSE 3000
 
# Command to run your app

CMD ["node", "index.js"]
 
