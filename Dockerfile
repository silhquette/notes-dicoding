FROM node:22-alpine

# Define env
ENV APP_PORT=5000
ENV NODE_ENV='production'

# Add some labels for Docker image
LABEL author="muhammad qiyam"
LABEL company="UPN VETERAN YOGYAKARTA" website="https://upnyk.ac.id"

# Create working directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy project folder
COPY . .

# Port espose
EXPOSE ${APP_PORT}

# Start the server
CMD ["npm", "run", "start:prod"]