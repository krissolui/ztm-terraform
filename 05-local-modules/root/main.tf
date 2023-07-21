terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuring the AWS Provider
# !!Use your own access and secret keys!!
provider "aws" {
  region = "ca-central-1"
}

module "vpc" {
  source = "../modules/vpc"
}

module "server" {
  source        = "../modules/server"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
  instance_type = var.instance_type
  public_key    = var.public_key
  script        = var.script
}