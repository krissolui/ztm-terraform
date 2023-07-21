output "vpc_id" {
  value = aws_vpc.main.id
  description = "Main VPC ID"
}

output "subnet_id" {
  value = aws_subnet.web.id
  description = "Subnet ID"
}