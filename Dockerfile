# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# App runs on port 3000
EXPOSE 3000

# Command to start the app
CMD ["node", "index.js"]
