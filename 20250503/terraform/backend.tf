terraform {
    backend "s3" {
        bucket = "tfstate-curso75601"
        key = "20250503/terraform.tfstate"
        region = "us-east-1"
    }
}