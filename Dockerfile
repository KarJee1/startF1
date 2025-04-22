# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build your frontend if needed (e.g., React/Next)
RUN npm run build

# Expose port 8080 for Cloud Run
ENV PORT 8080
EXPOSE 8080

# Start your server (make sure your start script is correct in package.json)
CMD ["npm", "start"]
