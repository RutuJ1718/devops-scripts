module "vpc" {
  source   = "./modules/VPC"
  vpc_cidr = var.vpc_cidr
  vpc_tag  = var.vpc_tag
}

module "subnet" {
  source      = "./modules/Subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
  AZ          = var.AZ

}

module "SG" {
  source  = "./modules/Security Group"
  vpc_id  = module.vpc.vpc_id
  SG_name = var.SG_name
}

module "nic" {
  source      = "./modules/NIC"
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_name    = var.nic_name
}

module "Instance" {
  source   = "./modules/Instance"
  ec2_ami  = var.ec2_ami
  ec2_size = var.ec2_size
  ec2_name = var.ec2_name
  nic_id   = module.nic.nic_id
}
