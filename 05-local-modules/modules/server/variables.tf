variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "public_key" {
  type = string
  description = "SSH public key"
}

variable "script" {
  type = string
  description = "Boot script"
}

variable "vpc_id" {
  type = string
  description = "VPC ID"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID"
}