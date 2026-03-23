# Use lightweight Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Build project using Webpack (creates dist/)
RUN npm run build

# Install lightweight server to serve static files
RUN npm install -g serve

# Expose app port
EXPOSE 3000

# Start app
CMD ["serve", "-s", "dist", "-l", "3000"]