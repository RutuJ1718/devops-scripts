variable "bucket" {
    default = "s3statebackend1718"
  }

variable "OS" {
    type = string
    default = "ami-0c7217cdde317cfec"
    description = "This is my ami ID"
}

variable "Size" {
    type = string
    default = "t2.micro"
    description = "This is my EC2 Instance Size"
}
