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

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.data_lake.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "raw_folder" {
  bucket = aws_s3_bucket.data_lake.id
  key    = "raw/"
}

resource "aws_s3_object" "refined_folder" {
  bucket = aws_s3_bucket.data_lake.id
  key    = "refined/"
}