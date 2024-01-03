variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "name" {
  type        = string
  default     = "MyTerraformVPC"
  description = "This is my VPC name"
}

variable "public_subnet_cidr_blocks" {
  description = "cider blocks for public subnets"
  default     = "10.0.1.0/24"

}

variable "private_subnet_cidr_blocks" {
  description = "cider blocks for private subnets"
  default     = "10.0.2.0/24"
}

variable "route_cidr_block" {
  description = "The CIDR block for the default route in the route table."
  type        = string
  default     = "0.0.0.0/0"
}
