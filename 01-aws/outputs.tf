output "ami_name" {
  value       = aws_instance.my_vm.ami
  description = "EC2 instance AMI"
  sensitive   = true
}

output "ec2_public_id" {
  value       = aws_instance.my_vm.public_ip
  description = "EC2 instance public IP"
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}