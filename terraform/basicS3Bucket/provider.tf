terraform {
    backend "s3" {
        bucket = "s3statebackend1718"
        dynamodb_table = "state-lock"
        key = "global/mystatefile/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
      
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.31.0"
        }
    }
}

provider "aws" {
  # Configuration options
   region = "us-east-1"
}
