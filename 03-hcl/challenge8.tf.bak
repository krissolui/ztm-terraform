terraform {
}

variable "environment" {
  type = map(string)
  default = {
    "test"       = "us-west-1",
    "production" = "us-west-2"
  }
}

variable "availability_zones" {
  type = map(string)
  default = {
    "us-west-1" = "us-west-1a,us-west-1b,us-west-1c",
    "us-west-2" = "us-west-2a,us-west-2b,us-west-2c"
  }
}

output "availability_zone" {
  value = element(split(",", lookup(var.availability_zones, lookup(var.environment, "production"))), 2)
}