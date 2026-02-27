Task 1, 2, 3, 4, 5 and 6 are added and the files are added and also the answers for the questions are also added:-

Files:-

1) Docker compose file 

![alt text](image.png)

![alt text](image-1.png)

2) Code files:- app.py, requirements.txt and Dockerfile

![alt text](image-2.png)

![alt text](image-3.png)

![alt text](image-4.png)

Answers:- 

Task 2:-

This means:
App will wait until DB passes healthcheck
Not just “container started”
But “database ready to accept connections”

Task 3:-

restart: always
Always restart
Even after system reboot

restart: on-failure
Restart only if container exits with error
Not if manually stopped0

Task 5:-

All 3 web will try to bind to port 5000 which is impossible. Only 1 will be able to do that, so scaling will break.

Why Scaling Fails With Port Mapping?
Because port binding is host-level and only one process per port can be bind. Also compose is not a load balancer. 

We use Load balancer or nginx for the scaling.

Website and path screenshots:- 

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)