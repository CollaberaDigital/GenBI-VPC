# Provider configuration (AWS)
provider "aws" {
  region = var.aws_region
  # Add any other provider settings as needed
}

# VPC module
module "vpc" {
  source = "./create-vpc.tf"  # Adjust the path based on your actual setup

  vpc_name       = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
}

# Subnet module
module "subnet" {
  source = "./create-subnet.tf"  # Adjust the path based on your actual setup

  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  vpc_id            = module.vpc.vpc_id
}
