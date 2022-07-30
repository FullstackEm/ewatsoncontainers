FROM node:slim

# Step 1 - Add container working directory
WORKDIR /app
# Step 2 - Copy npm dependencies
COPY package.json /app/package.json
# Step 3 - Install dependencies

# Copy app source code
COPY index.js /app/index.js

#Expose port and start application
RUN npm Install

EXPOSE 3000
CMD ["npm", "start"]