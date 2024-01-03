#Step 1: Create a VPC

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.name
  }
}

#Step 2: Create a Public

resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_blocks
}

#Step 3: Create Private Subnet

resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_blocks
}

#Step 4: Create IGW

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}

#Step 5: Create Route Tables for Public Subnet

resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }
}

#Step 6: Create Route Table Association Public Subnet
resource "aws_route_table_association" "PublicRTAssociation" {
  subnet_id      = aws_subnet.PublicSubnet.id
  route_table_id = aws_route_table.PublicRT.id
}
