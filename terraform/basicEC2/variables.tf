variable "OS" {
  type        = string
  default     = "ami-0c7217cdde317cfec"
  description = "This is my ami ID"
}

variable "Size" {
  type        = string
  default     = "t2.micro"
  description = "This is my EC2 Instance Size"
}

variable "Name" {
  type        = string
  default     = "WebServer"
  description = "This is my EC2 Instance name"
}

variable "vpc_cidr" {
  type    = string
  default = "172.17.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "test-vpc"
  }
}

variable "subnet_cidr" {
  type    = string
  default = "172.17.10.0/24"
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
