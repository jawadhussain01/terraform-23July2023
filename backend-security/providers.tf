terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket         = "terraform-remote-demo"
    key            = "security/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-state-locking"
  }
}

