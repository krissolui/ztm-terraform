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
  region = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr_block

  azs            = [var.subnet_zone]
  public_subnets = [var.web_subnet]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ssh_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/ssh"

  name        = "ssh-sg"
  description = "Security group for ssh ports open within VPC"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_key_pair" "test_ssh_key" {
  key_name   = "testing_ssh_key"
  public_key = file(var.public_key)
}

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  ami                         = var.image_name
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.test_ssh_key.key_name
  monitoring                  = true
  vpc_security_group_ids      = [module.ssh_server_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# module "server" {
#   source        = "../modules/server"
#   vpc_id        = module.vpc.vpc_id
#   subnet_id     = module.vpc.subnet_id
#   instance_type = var.instance_type
#   public_key    = var.public_key
#   script        = var.script
# }