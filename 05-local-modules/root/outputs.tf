output "ec2_public_ip" {
  value       = module.server.instance.public_ip
  description = "EC2 instance public IP"
}

output "ami_id" {
  value       = module.server.instance.ami
  description = "EC2 instance AMI ID"
}