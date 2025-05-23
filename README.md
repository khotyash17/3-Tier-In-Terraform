# 📘This project uses Terraform module to set-up 3-tier architecture on Amazon Web Service:

## 📖 Introduction

**Using terraform module here Deploy 3-tier Infrastucture on AWS Instances. This project is ideal for learning or implementing cloud-native infrastructure deployments using Terraform in a real-world scenario.**

## ✨ Architecture Overview:

**1. Web Tier**
- Deployed in public subnets
- EC2 instances with a web server (Apache/Nginx)
- Accessible via HTTP/HTTPS and SSH

**2. Application Tier**
- Deployed in private subnets
- EC2 instances running backend services (e.g., Python/Node.js)
- Communicates only with Web Tier and DB Tier
- No direct internet access

**3. Database Tier**
- Deployed in private subnets
- Amazon RDS MySQL
- Accessible only from Application Tier

## 🌐 Network:
Custom VPC
Public Subnets (Web Tier)
Private Subnets (App & DB Tiers)
Internet Gateway for external traffic

## 🛠️ Installation

**1. Install Terraform on your machine (If your using Amzon Linux) then use following step to install terraform:**

``sudo yum install -y yum-utils shadow-utils``
``sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo``
``sudo yum -y install terraform``


**2. Install Terraform on your machine (If your using Ubuntu OS) then use following step to install terraform:**

`wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
``echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
``sudo apt update && sudo apt install terraform
`
## 🔐 Security Group:
<table border="1">
  <thead>
    <tr>
      <th>Layer</th>
      <th>Inbound Access From</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Web Tier</td>
      <td>HTTP/SSH from Internet</td>
    </tr>
    <tr>
      <td>App Tier</td>
      <td>Custom port (e.g., 8080) from Web Tier</td>
    </tr>
    <tr>
      <td>Database Tier</td>
      <td>MySQL (3306) from App Tier</td>
    </tr>
  </tbody>
</table>

## 📁 Sturcture
3-tier-terraform/

|-- main.tf               # Root Terraform file invoking modules
|-- variables.tf          # Input variable definitions
|-- outputs.tf            # Output variable definitions
├-- terraform.tfvars      # Actual variable values
|
|-- modules/
|   |-- vpc/              # VPC, Subnets,
|   |-- web/              # EC2 instance setup for Web Tier
|   |-- app/              # EC2 instance setup for App Tier
|   |-- db/               # RDS MySQL instance setup
|   |-- security/         # Security Groups for all tiers

## 🛠 Setup

### Step 1. Fire command `terraform init` to initialize terraform 
### Step 2. Fire command `terraform plan` 
### Step 3. Fire command `terraform apply`


Step 1. Launch a Devlopment Instance on AWS (Optional) Otherwise use Visual Studio:
If your using Instance:

Step 2. Install Terraform on your machine (If your using Amzon Linux) then use following step to install terraform:

wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

Step 3: Clonning Code & Inializing Terraform

1. Clone the code github to your machine: git clone https://github.com/khotyash17/3-Tier-In-Terraform/tree/main
2. cd to terraform directory
3. Then Initialize terrform.
4. terraform

VPC: Custom Virtual Private Cloud with public and private subnets
Security: Security groups and network ACLs for controlled access
Web Tier: Instances serving web traffic
App Tier: Backend application servers
DB Tier: Database instances for persistent storage
Each tier is organized into separate Terraform modules for modularity and ease of management.
