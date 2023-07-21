variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "public_key" {
  type        = string
  description = "SSH public key"
}

variable "script" {
  type        = string
  description = "Ralative path to boot script"
}