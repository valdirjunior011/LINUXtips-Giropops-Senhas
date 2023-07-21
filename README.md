# Random Password Generator Container

This repository contains a Docker container that generates random passwords.

## How to Run

To run the container, follow these steps:

1. Make sure you have Docker installed on your system.

2. Make sure to Run redis container

3. Pull the Docker image from the Docker Hub:

   ```
   docker pull valdirjunior011/linuxtips-giropops-senhas:<tag>
   ```

   Replace `<tag>` with the desired version or tag of the image. check on DockerHub the versions available

4. Run the container with the following command:

   ```
   docker run -d -p <port>:5000 --name <container_name> --link <redis_container> valdirjunior011/linuxtips-giropops-senhas:<tag>
   ```

   - Replace `<port>` with the port number you want to map to the container's port 5000.
   - Replace `<container_name>` with a name for the container.
   - Replace `<redis_container>` with the name of the Redis container to link for specific functionality.
   - Replace `<tag>` with the specific version or tag of the Docker image you want to use.

5. The container will now be running and ready to generate random passwords. You can access the password generator API at `http://localhost:<port>/`.
