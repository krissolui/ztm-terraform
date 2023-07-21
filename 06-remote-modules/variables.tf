variable "region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
}

variable "subnet_zone" {
  type        = string
  description = "Subnet availibility zone"
}

variable "web_subnet" {
  type        = string
  description = "Subnet CIDR block"
}

variable "public_key" {
  type        = string
  description = "SSH public key"
}

variable "image_name" {
  type        = string
  description = "EC2 instance AMI"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}