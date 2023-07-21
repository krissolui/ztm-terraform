variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "web_subnet" {
  type        = string
  description = "CIDR block for web subnet"
  default     = "10.0.10.0/24"
}

variable "main_vpc_name" {
  type = string
  description = "Main VPC name"
  default = "Development VPC"
}

variable "subnet_zone" {
  type = string
  description = "Subnet availability zone"
  default = "ca-central-1a"
}