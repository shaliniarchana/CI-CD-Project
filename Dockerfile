# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Install Webpack globally to fix permission error
RUN npm install -g webpack webpack-cli

# Copy all files
COPY . .

# Build project
RUN npm run build

# Install lightweight server to serve dist
RUN npm install -g serve

# Expose port
EXPOSE 3000

# Start server
CMD ["serve", "-s", "dist", "-l", "3000"]