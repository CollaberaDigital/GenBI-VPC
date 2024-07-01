provider "aws" {
  region = var.region
}

resource "aws_subnet" "example" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet for ${var.vpc_name} in ${var.availability_zone}"
  }
}
