provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Server"{
ami = var.OS
instance_type = var.Size
count = 3
}
