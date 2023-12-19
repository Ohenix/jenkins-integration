provider "aws" {
    region = "eu-west-2"  
}

# The networking for VPC
resource "aws_vpc" "Lezuha-VPC" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = true

  tags = {
    name = "Lezuha-VPC"
  }
}
resource "aws_subnet" "Public-sub1" {
  vpc_id     = aws_vpc.Lezuha-VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public-sub1"
  }
}


