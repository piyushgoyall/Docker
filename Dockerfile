# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y curl
# RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs

# COPY package.json package.json
# COPY package-lock.json package-lock.json
# COPY index.js index.js

# RUN npm install

# ENTRYPOINT [ "node", "index.js" ]

FROM ubuntu:latest

# Update and install curl
RUN apt-get update && apt-get install -y curl

# Add Node.js repo and install Node.js
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Set working directory
WORKDIR /app

# Copy files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Entry point
ENTRYPOINT ["node", "index.js"]
