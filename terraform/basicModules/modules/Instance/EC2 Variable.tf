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

variable "nic_id" {
  type = string
}
