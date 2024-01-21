provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Server" {
  ami           = var.OS
  instance_type = var.Size
  subnet_id     = aws_subnet.my_subnet.id
  tags = {
    name = var.Name
  }
}

#AWS VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags       = var.vpc_tag
}

#AWS Subnet attached to AWS VPC
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.AZ

  tags = var.subnet_name
}
