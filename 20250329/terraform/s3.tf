terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "curso75601" {
  bucket = "curso75601"

  tags = {
    curso = "75601"
  }
}