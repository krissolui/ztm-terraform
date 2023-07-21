variable "ami_id" {
  type        = string
  description = "AMI ID to provision"
  default     = "ami-037d1030a0db1fa12"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "server_count" {
  type        = number
  description = "Number of EC2 instances to provision"
  default     = 1
}