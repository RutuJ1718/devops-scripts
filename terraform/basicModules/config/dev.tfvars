vpc_cidr = "172.16.0.0/16"

vpc_tag = {
  "Name" = "dev-vpc"
}

subnet_cidr = "172.16.10.0/24"

subnet_name = {
  "Name" = "dev-subnet"
}

AZ = "us-east-1a"

SG_name = {
  "Name" = "allow_tls"
}

nic_name = {
  "Name" = "dev_NIC"
}
private_ips = ["172.16.10.100"]

ec2_ami = "ami-0c7217cdde317cfec"

ec2_name = {
  "Name" = "Prod-Server1"
}

ec2_size = "t2.micro"
