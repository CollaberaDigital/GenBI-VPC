variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "vpcName" {
  type        = string
  description = "Name of the VPC to create"
}

variable "vpcCidrBlock" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnetCidrBlock" {
  type        = string
  description = "CIDR block for the subnet"
}

variable "availabilityZone" {
  type        = string
  description = "AWS Availability Zone for the subnet"
}
