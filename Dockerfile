# 'FROM' -> first instruction in every Dockerfile It tells Docker, "Go find this specific image and use it as my foundation."
# 'node' -> the official image name from dockerhub. It means your container will come pre-loaded with Node.js and NPM
# '':20' -> version of Node.
# 'alpine' -> Alpine is a security-oriented, lightweight Linux distribution (node:20 = 1gb | node:20-alpine 100mb)
FROM node:20-alpine

# creates a folder named 'app' then sets it as the current directory for all commands (mkdir app && cd app)
# if you don't set a WORKDIR, Docker will dump your files into the "root"
WORKDIR /app

# copies project files from your device to the docker image
# - first dot -> Source (everything in the current folder of the source computer)
# - second dot -> Destination (put everything inside the current folder in the container. /app in our case since we set the WORKDIR to /app)
COPY . .

# CMD -> start the container/run the app
CMD node index.js