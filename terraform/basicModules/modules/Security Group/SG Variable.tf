variable "vpc_id" {
  type = string
}

variable "SG_name" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}
