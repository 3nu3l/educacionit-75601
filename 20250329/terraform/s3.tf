terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "curso75601-20250329"
}

resource "aws_s3_bucket" "curso75601" {
  bucket = "curso75601"

  tags = {
    curso = "75601"
  }
}