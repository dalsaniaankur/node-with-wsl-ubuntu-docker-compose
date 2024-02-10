# Define Node.js version
FROM node:18
# Create app directory
WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
# Define port to expose application for the outside world.
EXPOSE 3000
CMD ["npx", "nodemon", "index.js"]