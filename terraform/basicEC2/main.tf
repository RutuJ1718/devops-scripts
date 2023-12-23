provider "aws" {
    access_key = "AKIAXU4WWEMM5GHM5N2S"
    secret_key = "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"
    region = "us-east-1"  
}

resource "aws_instance" "Server" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    tags = {
        name = "Web Server"
    }
  
}