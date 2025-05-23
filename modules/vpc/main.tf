terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
  
}
resource "aws_subnet" "web" {
  vpc_id = aws_vpc.main.id
  cidr_block       = "10.0.0.0/20"
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone["web"]
}

resource "aws_subnet" "app" {
  vpc_id = aws_vpc.main.id
  cidr_block       = "10.0.16.0/20"
  availability_zone = var.availability_zone["app"]
}

resource "aws_subnet" "db" {
  vpc_id = aws_vpc.main.id
  cidr_block       = "10.0.32.0/20"
  availability_zone = var.availability_zone["db"]
}

resource "aws_subnet" "db_2" {
  vpc_id = aws_vpc.main.id
  cidr_block       = "10.0.48.0/20"
  availability_zone = var.availability_zone["db_2"]
}

data "aws_availability_zones" "available" {}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "web_subnets" {
  value = aws_subnet.web[*].id
}

output "app_subnets" {
  value = aws_subnet.app[*].id
}

output "db_subnets" {
  value = [aws_subnet.db.id , aws_subnet.db_2.id]
}
