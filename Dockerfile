FROM node:20

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Start the app (change if needed)
CMD ["npm", "start"]

# Expose port if your app runs on one (e.g., React or Express)
EXPOSE 8080
