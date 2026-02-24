Task 1:- 

![alt text](image.png)

![alt text](image-1.png)

Dockerfile:- ![alt text](image-5.png)

Task 2:-

![alt text](image-2.png)

![alt text](image-3.png)

Dockerfile:- ![alt text](image-4.png)

Task 3:-

![alt text](image-6.png)

![alt text](image-7.png)

Dockerfile:- ![alt text](image-8.png)

CMD gets replaced if we pass a new command whereas Entrypoint is fixed. The passed commands/arguments get appended.

Task 4:-

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-12.png)

Dockerfile:- ![alt text](image-13.png)

Task 5:-

![alt text](image-14.png)

Now when you run "docker build -t <name>:<version> ." command, it sends entire directory to docker daemon. When we use .dockerignore file, .dockerignore will prevent large folders, secrets and unnecessary files. This will prevent the size of images getting big and reduces build time.

Task 6:-

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)

Docker caches layer so when you build the same dockerfile again, it will use the cache and also display the message "using cache".
Docker build layer by layer. If you change one layer then all the layers after it rebuild. So it is best to put the frequently changed layer to the last.