# Use node 14 as base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy files to the container
COPY . .

# SET Environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependencies and build
RUN npm install --production --unsafe-perm && npm run build

# Expose port to 8080
EXPOSE 8080

# Start the app
CMD ["npm", "start"]