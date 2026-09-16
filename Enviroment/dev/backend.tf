terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67.0"
    }
  }



backend "s3" {
    bucket = "infra-1409"
    key    = "Enviroment/dev/terraform.tfstate "
    region = "ap-south-1"
  }
}

provider "aws" {
    region = var.aws_region
  }

