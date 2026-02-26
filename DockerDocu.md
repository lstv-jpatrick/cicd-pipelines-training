# Docker

## Images

A **Docker Image** is what you create so that your code can run anywhere. (It runs anywhere because it doesn't rely on the host computer's settings).

A Docker Image is a read-only file that contains everything your application needs to run:

- **The Code:** Your actual logic.
- **The Runtime:** The "engine" (like Node.js, Python, Composer or Java).
- **The Libraries:** Every single dependency (the npm install results).
- **The OS:** A tiny, stripped-down version of Linux.

## Container

A **Docker Container** is a runnable instance of the image. (the app/software itself).

The Container takes everything specified in the image and executes commands based on instructions to run the app.

---

**Docker Image** → The recipe/cookbook  
**Docker Container** → The cooked food created from the recipe

## Docker Workflow
**Docker Client** -> UI (CLI/GUI) for interacting w/ Docker.
**Docker Host (Docker Daemon)** -> Background Process for managing containers (Listens for client commands, builds images, etc.)
**Docker Registry (Docker Hub)** -> Repository of Docker Images (Git => Github ; Docker => Docker Hub)

## Creating Docker Image
- Cd into the folder where the Dockerfile lives, then run
`docker build -t <name-your-image > .`
- This starts the build process. The Docker Engine reads the Dockerfile and executing the commands.
- The `-t` stands for 'Tag'. It lets you give your image a human-readable name instead of a default random id.
- The Dot (last part) is the directory where Docker looks for you Dockerfile and all the files to be copied (COPY).

## Run the Image / Containerize
`docker run <image-name>`
- No need to cd into the project directory since the image you're running already contains all the necessities for the app.

## Opening the app in shell mode
`docker run -it <image-name> sh`
- Navigates you to the container's OS allowing you to talk directly to the Linux kernel inside the container.