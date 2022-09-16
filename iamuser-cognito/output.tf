output "aws_iam_user" {
  value = [aws_iam_user.user_name.name]
}
output "password" {
  description = "PGP key used to encrypt sensitive data for this user"
  value       = [aws_iam_user_login_profile.default.encrypted_password]
}
output "user_secret_id" {
  value = [aws_iam_user_login_profile.default.id]
}

output "secret_key" {
  value = aws_iam_access_key.user_access_key.secret
  description = "The access key secret"
  sensitive   = true
}
output "access_key" {
  value = aws_iam_access_key.user_access_key.id
}
output "ec2_arn" {
  value = aws_instance.ec2_server.arn
}
output "ec2_instance_state" {
  value = aws_instance.ec2_server.instance_state
}
output "ec2_public_dns" {
  value = aws_instance.ec2_server.public_dns
}
output "ec2_public_ip" {
  value = aws_instance.ec2_server.public_ip
}