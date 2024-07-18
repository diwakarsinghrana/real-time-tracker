# Stage 1: Build
FROM node:14 AS builder

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Build the application (if needed, for example with React or Angular frontends)
# RUN npm run build

# Stage 2: Production
FROM node:14-alpine

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy only the necessary files from the build stage
COPY --from=builder /usr/src/app .

# Install any needed dependencies only for production
# If you have any dependencies that need to be installed at runtime, uncomment the next line
# RUN npm install --only=production

# Expose the port the app runs on
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "app.js"]
