terraform {
    backend "s3" {
        bucket = "tfstate-curso75601"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}