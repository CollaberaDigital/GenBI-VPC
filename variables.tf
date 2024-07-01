variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC to create"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_cidr_block" {
  type        = string
  description = "CIDR block for the subnet"
}

variable "availability_zone" {
  type        = string
  description = "AWS Availability Zone for the subnet"
}
