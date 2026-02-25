Task 1:- 

![alt text](image.png)

![alt text](image-1.png)

Data is gone because containers are ephemeral. File System inside containers live in writable layers. When container is removed, writing layer is destroyed.

Task 2:-

![alt text](image-2.png)

Data is still there because Volume exists outside container lifecycle.
Container deleted but Volume still exists.

Task 3:-

![alt text](image-3.png)

Task 4:-

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)

Default bridge does NOT enable automatic DNS resolution by name.

Task 5:-

![alt text](image-8.png)

![alt text](image-9.png)

Custom bridge networks enable:
Embedded DNS
Automatic name resolution
Isolated networking

Default bridge does NOT.

Task 6:-

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-12.png)

It connects by container name.