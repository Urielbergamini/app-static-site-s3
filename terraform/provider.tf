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
    bucket         = "app-static-site-s3"
    key            = "terraform.tfstate"
    dynamodb_table = "dynamo-uriel1"
    region         = "us-east-1"
  }

}