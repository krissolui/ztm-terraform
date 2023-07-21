variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block for VPC"
  type        = string
}

variable "web_subnet" {
  default     = "10.0.10.0/24"
  description = "CIDR block for web subnet"
  type        = string
}

variable "main_vpc_name" {
  type = string
}

variable "subnet_zone" {
  type = string
}

variable "my_pub_ip" {
  type = string
}

variable "ssh_pub_key" {
  type = string
}