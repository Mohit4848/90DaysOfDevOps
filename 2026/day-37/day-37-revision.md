Self-Assessment Checklist
Mark yourself honestly — can do, shaky, or haven't done:

 Run a container from Docker Hub (interactive + detached)                          Can do
 List, stop, remove containers and images                                          Can do
 Explain image layers and how caching works                                        Can do
 Write a Dockerfile from scratch with FROM, RUN, COPY, WORKDIR, CMD                Can do
 Explain CMD vs ENTRYPOINT                                                         Can do
 Build and tag a custom image                                                      Can do
 Create and use named volumes                                                      Can do
 Use bind mounts                                                                   haven't done
 Create custom networks and connect containers                                     Can do
 Write a docker-compose.yml for a multi-container app                              Can do
 Use environment variables and .env files in Compose                               Can do
 Write a multi-stage Dockerfile                                                    Can do
 Push an image to Docker Hub                                                       Can do
 Use healthchecks and depends_on                                                   Can do


Quick-Fire Questions
Answer from memory, then verify:

1️) Difference between an image and a container?
Image = Read-only blueprint (template).
Container = Running instance of an image.
Think:
Image = class
Container = object

2️) What happens to data inside a container when you remove it?
It is lost permanently unless:
You used a named volume.
You used a bind mount.

3️) How do two containers on the same custom network communicate?
They use:
Container name as hostname
Built-in Docker DNS

Example:
ping db
Works only on custom networks (not default bridge by name).

4️) What does docker compose down -v do?
Command	Effect
docker compose down	Removes containers + network
docker compose down -v	Also removes named volumes
⚠️ -v deletes your database data.

5️) Why are multi-stage builds useful?

They:
Remove build dependencies
Make images smaller
Improve security
Reduce attack surface
Production images contain only runtime artifacts.

6️) Difference between COPY and ADD?
COPY	                   ADD
Simple file copy	       Can extract tar + download URLs
Predictable	               Has extra behavior

Best practice:
Use COPY unless you specifically need ADD.

7️) What does -p 8080:80 mean?
HOST_PORT : CONTAINER_PORT
8080 on your machine
80 inside container
Browser → localhost:8080 → container port 80

8️) How do you check Docker disk usage?
docker system df

To clean:
docker system prune