terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.location_aws
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name_AWS

  tags = {
    Name        = "My Data Lake Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}