output "iam_instance_profile" {
  value = module.iam-role.iam_instance_profile
}
output "aws_iam_role" {
  value = module.iam-role.aws_iam_role
}
output "aws_iam_role_policy" {
  value = module.iam-role.aws_iam_role_policy
}
