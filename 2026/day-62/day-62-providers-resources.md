Task 1:-

![alt text](image.png)

~> 5.0 means version from 5.0 to 5.9 not after that. >= 5.0 means any version before 5.0 and = 5.0.0 means the exact 5.0.0 version.

provider lock file provides:- 
Locks provider version for consistency
Ensures same version across machines

Task 2:- 

![alt text](image-2.png)

![alt text](image-3.png)

Task 3:-

Terraform knows order because of references.
Terraform builds dependency graph automatically.

If subnet created before VPC, it will fail, aws error.

Implicit Dependencies in your code:
subnet → depends on VPC
IGW → depends on VPC
route table → depends on IGW
route association → depends on subnet + route table

Task 4:-

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

Task 5:-

![alt text](image-7.png)

![alt text](image-8.png)

We use depends_on when terraform can't detect dependency on its own.

Task 6:-

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)