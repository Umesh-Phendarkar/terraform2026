terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "jan2026"

    workspaces {
      name = "terraform2026"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-cloud-demo-bucket-12345"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
