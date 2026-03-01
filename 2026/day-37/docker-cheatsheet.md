1) Containers

docker run -it image sh        # Run interactive container
docker run -d image            # Run detached
docker ps                      # List running containers
docker ps -a                   # List all containers
docker stop container          # Stop container
docker rm container            # Remove container
docker exec -it container sh   # Enter running container
docker logs container          # View logs
docker logs -f container       # Follow logs

2) Images
docker build -t name:tag .     # Build image
docker images                  # List images
docker rmi image               # Remove image
docker pull image              # Pull image
docker push image              # Push image
docker tag img newname:tag     # Tag image
docker image history image     # Show layers

3) Volumes
docker volume create name
docker volume ls
docker volume inspect name
docker volume rm name

Mount:
-v volume:/path
-v /host/path:/container/path

4) Networks
docker network create name
docker network ls
docker network inspect name
docker network connect network container

5) Dockerfile Instructions
FROM image
RUN command
COPY src dest
WORKDIR /app
EXPOSE 5000
CMD ["python", "app.py"]
ENTRYPOINT ["executable"]

6) Docker Compose
docker compose up
docker compose up -d
docker compose down
docker compose down -v
docker compose ps
docker compose logs
docker compose logs -f
docker compose build
docker compose up --build

7) Cleanup
docker system df
docker system prune
docker container prune
docker image prune
docker volume prune

8) Weak areas I revisited are Multi-stage dockerfile, custom networks and mount binding.