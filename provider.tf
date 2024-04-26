terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
        }
    }
    backend "s3" {
        bucket = "roboshop-bucket-remote"
        key = "vpc"
        region = "us-east-1"
        dynamodb_table = "roboshop-lock"
    }
}

provider "aws" {
  region = "us-east-1"
}