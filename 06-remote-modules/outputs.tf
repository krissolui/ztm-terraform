output "ec2_public_ip" {
  value       = module.ec2_instance.public_ip
  description = "EC2 instance public IP"
}