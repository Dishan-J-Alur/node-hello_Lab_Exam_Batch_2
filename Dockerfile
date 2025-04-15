# Stage 1: Base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application source
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
