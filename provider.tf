terraform {
  required_providers {
    aws = {
      source = "opentofu/aws"
      version = "~> 5.0"
    }
  }
}

# REAL
provider "aws" {
  region                      = "us-east-1"
}
