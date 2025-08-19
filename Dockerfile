# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application code including views/
COPY . .

# Expose port 80 (our app will listen on 80)
EXPOSE 80

# Start the app
CMD ["node", "app.js"]
