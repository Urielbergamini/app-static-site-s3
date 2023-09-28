# PROVIDER
terraform {

  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend "s3" {
    bucket         = "tf-staticsite-s3-state-v1"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-staticsite-s3-state-v1"
    region         = "us-east-1"
  }

}