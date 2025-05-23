This project uses Terraform to create a 3-tier architecture on AWS Instances:

Step 1. Launch a Devlopment Instance on AWS (Optional) Otherwise use Visual Studio:
If your using Instance:

Step 2. Install Terraform on your machine (If your using Amzon Linux) then use following step to install terraform:

wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform


1. Clone the code github to your machine: git clone https://github.com/khotyash17/3-Tier-In-Terraform/tree/main
2. cd to terraform directory
3. Then Initialize terrform.

VPC: Custom Virtual Private Cloud with public and private subnets
Security: Security groups and network ACLs for controlled access
Web Tier: Instances serving web traffic
App Tier: Backend application servers
DB Tier: Database instances for persistent storage
Each tier is organized into separate Terraform modules for modularity and ease of management.
