Task 1:-

![alt text](image.png)

![alt text](image-1.png)

Without needs: the jobs run parallel but with needs we create dependencies so the next job won't run until the previous job gets completed if you have put needs:<prev_job_name>.

Task 2:-

![alt text](image-2.png)

![alt text](image-4.png)

![alt text](image-3.png)

Task 3:-

![alt text](image-5.png)

![alt text](image-6.png)

Why would you pass outputs between jobs?

We pass outputs between jobs because it allows jobs to share data safely.

Task 4:-

![alt text](image-7.png)

![alt text](image-8.png)

A step with `continue-on-error: true` — what does this do?

Normally without this, the job will stop after the step fails. But with putting the failing steps put within continue block, it run the further steps even after previous job failing.

It is useful as lint errors shouldn't block pipeline. (ye google mai suggestion thi tips mai yaad rakhne ke liye daal diya apna)

Task 5:- 

![alt text](image-9.png)

![alt text](image-10.png)