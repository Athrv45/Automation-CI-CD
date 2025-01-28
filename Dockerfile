# Use official Node.js image as base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the project (if needed)
RUN npm run build

# Expose the port your application runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
