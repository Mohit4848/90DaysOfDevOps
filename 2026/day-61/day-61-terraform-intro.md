Task 1:-

Infrastructure as Code (IaC) means managing and provisioning infrastructure using code instead of manual setup. It allows us to automate the creation of servers, networks, and resources.

IaC solves problems like manual errors, inconsistency, and slow deployments. Instead of clicking in AWS console, we define everything in code and reuse it.

Terraform is declarative and cloud-agnostic. Declarative means we define "what we want", not how to create it. Cloud-agnostic means it works with AWS, Azure, GCP, etc.

Terraform vs others:
  CloudFormation → AWS only
  Ansible → configuration, not infra creation primarily
  Pulumi → uses programming languages (Python/JS)
  Terraform → simple, declarative, multi-cloud

Task 2:-

![alt text](image.png)

![alt text](image-1.png)

Task 3:-

![alt text](image-3.png)

![alt text](image-7.png)

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-2.png)

terraform init downloaded the provider aws plugin and .terraform/ directory.
.terraform/ directory contains provider's binaries and dependency files.

Task 4:-

![alt text](image-8.png)

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)

![alt text](image-12.png)

Terraform already knows s3 bucket exists because of terraform.tfstate file.

Task 5:-

![alt text](image-13.png)

![alt text](image-15.png)

Terraform show shows us the resources that we have made and their configurations/details.

![alt text](image-16.png)

terraform state list only shows us the name of our resources not details.

![alt text](image-17.png)

![alt text](image-18.png)

It shows the mentioned resources' details.

What does state file store?
The file stores:-

resource IDs
current configuration
metadata
dependencies

Why NOT edit manually?
You can break Terraform that will lead to infrastructure mismatch

Why not commit to Git?
because it contains:

secrets
resource IDs
sensitive data

Task 6:-

![alt text](image-19.png)

![alt text](image-20.png)

![alt text](image-21.png)

![alt text](image-22.png)

+ means create, - means destroy and ~ means update