Task 1:-

![alt text](image.png)

![alt text](image-2.png)

![alt text](image-1.png)

Secrets are encrypted, hidden from logs and are available during only workflow runtime.

Why should you never print secrets in CI logs?

It is so because CI logs are often publicly accessible and stored for months and are readable by contributors. If secrets are printed then they will be leaked.

Task 2:-

![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

Task 3:-

![alt text](image-7.png)

![alt text](image-6.png)

Can you see and download it from GitHub?

Yes, as you can see in the screenshot, I can download and see the artifacts demo file.

Task 4:-

![alt text](image-8.png)

![alt text](image-9.png)

When would you use artifacts in a real pipeline?

We will use it in different steps/jobs while deploying the application. Eg. Build will build the code and then test will test the code build by the build job and then deploy job will deploy the code that has been built by build job and tested by tested job.

Task 5:-

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-15.png)

Task 6:-

![alt text](image-12.png)

![alt text](image-13.png)

![alt text](image-14.png)

Cache is stored in github actions infrastructure.
It speeds pipeline because without cache, dependencies are downloaded in every run but with cache it uses previously downloaded packages.