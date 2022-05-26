terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

module "vpc" {
  source = "./modules/vpc"
}
