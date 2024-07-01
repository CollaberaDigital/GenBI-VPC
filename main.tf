# Provider configuration (AWS)
provider "aws" {
  region = var.awsRegion
}

# VPC resource
resource "aws_vpc" "main" {
  cidr_block = var.vpcCidrBlock
  tags = {
    Name = var.vpcName
  }
}

# Subnet resource
resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnetCidrBlock
  availability_zone = var.availabilityZone
  tags = {
    Name = "${var.vpcName}-subnet"
  }
}
