Task 1:-

main.go - 

![alt text](image.png)

Dockerfile-big -

![alt text](image-1.png)

Image Size -

![alt text](image-2.png)

This image includes Go compiler, build tools and entire OS.

Task 2:-

Dockerfile Multi-stage:- 

![alt text](image-3.png)

Image Size -

![alt text](image-4.png)

This image is smaller but serves the same purpose because final image does NOT include Go compiler. It only contains compiled binary and uses minimal Alpine base image, No build tools and fewer layers.

Task 3:-

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)

DockerHub Repo for my multistage image:- https://hub.docker.com/repository/docker/mohit4488/go-multi-stage/general

Task 4:-

![alt text](image-8.png)

![alt text](image-9.png) 

Latest version was by default extracting but got an error because I have pushed only the v1 version not the latest.

Task 5:-

I will remember all the Image best practice. Thank you for the guidance and information.