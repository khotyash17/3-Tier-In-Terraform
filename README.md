**This project uses Terraform to create a 3-tier architecture on AWS Instances:
**
Step 1. Launch a Devlopment Instance on AWS(Option) Otherwise use Visual Studio:
If your using Instance:
Step 1. Install Terraform on your machine.


1. Clone the code github to your machine: git clone https://github.com/khotyash17/3-Tier-In-Terraform/tree/main
2. cd to terraform directory
3. Then Initialize terrform.

VPC: Custom Virtual Private Cloud with public and private subnets
Security: Security groups and network ACLs for controlled access
Web Tier: Instances serving web traffic
App Tier: Backend application servers
DB Tier: Database instances for persistent storage
Each tier is organized into separate Terraform modules for modularity and ease of management.
