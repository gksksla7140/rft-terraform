terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}

locals {
  prefix = "${var.app_name}-${terraform.workspace}"
  common_tags = {
    Project     = var.app_name
    Environment = terraform.workspace
    Owner       = var.contact
    MangedBy    = "Terraform"
  }
}