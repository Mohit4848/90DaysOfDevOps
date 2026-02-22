Task 1:- 

![alt text](image.png)
Why Is Alpine So Small?
Alpine uses musl libc instead of glibc
Minimal packages
Designed for containers
No unnecessary system tools

Ubuntu:
Full Linux distribution
Larger base libraries
👉 Smaller image = faster pull = faster deployment.

I can see Environment variables:-
Entrypoint
Default command
Exposed ports
Image ID
Creation date

![alt text](image-1.png)

Task 2:-

I saw images, creation date, created by, size and comments.

![alt text](image-2.png)

What Are Layers?
Each instruction in a Dockerfile creates a layer.

Why Use Layers?
Efficient caching
Faster rebuilds
Shared layers between images
Less disk usage
If two images share same base image, Docker stores it only once.

Some layers show 0B because they are metadata layers like ENTRYPOINT, CMD, EXPOSE, etc.

Task 3:-
![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

Task 4:-
![alt text](image-7.png)

![alt text](image-8.png)

![alt text](image-9.png)

![alt text](image-10.png)

IP address:- 172.17.0.2
Port mappings:- "80/tcp"
Mounts:-  "Mounts": []

![alt text](image-11.png)

![alt text](image-12.png)

![alt text](image-13.png)

![alt text](image-14.png)

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)

Task 5:- 

![alt text](image-18.png)

![alt text](image-19.png)