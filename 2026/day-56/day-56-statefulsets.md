Task 1:-

![alt text](image.png)

DB nodes need fixed naming of pods in order to map data. They need stable and ordered naming of pods in order to find a member or binding the specific volume.

Task 2:-

![alt text](image-1.png)

Normal service has one IP so load get balanced between pods but in headless service, each pod gets its own DNS/pod, that means direct access to each pod.

Task 3:-

![alt text](image-2.png)

![alt text](image-3.png)

Task 4:-

![alt text](image-4.png)

Task 5:-

![alt text](image-5.png)

Data is there because of PVC.

TAsk 6:-

![alt text](image-6.png)

![alt text](image-7.png)

After scaling down there are still 5 pvc exist as in statefulset, data must not be lost.

Task 7:-

![alt text](image-8.png)