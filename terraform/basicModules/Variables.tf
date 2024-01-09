#AWS VPC Variables

variable "vpc_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "test-vpc"
  }
}

#AWS Subnet Variables

variable "subnet_cidr" {
  type    = string
  default = "172.16.10.0/24"
}

variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "test-subnet"
  }
}

variable "AZ" {
  type    = string
  default = "us-east-1a"
}

#AWS SG Variables

variable "SG_name" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}
#AWS NIC Variables

variable "private_ips" {
  type    = list(string)
  default = ["172.16.10.100"]
}

variable "nic_name" {
  type = map(any)
  default = {
    "Name" = "primary_NIC"
  }
}

#AWS EC2 Variables

variable "ec2_ami" {
  type    = string
  default = "ami-0c7217cdde317cfec"
}

variable "ec2_size" {
  type    = string
  default = "t2.micro"
}

variable "ec2_name" {
  type = map(any)
  default = {
    "Name" = "Prod-Server"
  }
}
