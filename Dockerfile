# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./ ./
RUN npm install
# port of the app
EXPOSE 8080
# Default command
# run a container with port is docker run -p host:container namecontainter
CMD ["npm", "start"]