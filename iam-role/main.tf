module "iam-role" {
  source  = "app.terraform.io/rootorg/iam-role/aws"
  version = "1.0.1"
  # insert required variables here




  role_name = var.role_name
  role_env = var.role_env
  role_build_by = var.role_build_by
  instance_role_profile_name = var.instance_role_profile_name
  policy_name = var.policy_name
  region = var.region
}
