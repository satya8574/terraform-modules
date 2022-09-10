output "ec2_instance_status" {
  value = module.ec2.ec2_instance_state
}
output "ec2_public_dns_value" {
  value = module.ec2.ec2_public_dns
}
output "ec2_public_ip_value" {
  value = module.ec2.ec2_public_ip
}
output "aws_private_ip_address" {
  value = module.ec2.aws_private_ip
}
