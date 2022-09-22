module "iamuser-cognito" {
  source  = "app.terraform.io/veloce-005/iamuser-cognito/aws"
  version = "1.0.2"
  # insert required variables here






  region                         = "ap-south-1"
  role_name                      = "cognito_role"
  role_env                       = "dev"
  role_build_by                  = "satya"
  policy_name                    = "cognito_read"
  policy_attachment_name         = "ploicy_attached_with_user_and_role"
  user_iam_name                  = "terraform_user_02"
  minimum_password_length        = 16
  require_lowercase_characters   = true
  password_reset_required        = false
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
  cognito_policy                 = "cognito_read_only"
  user_on_project                = "veloce"
  user_env                       = "Dev"
  tags_for_user                  = "terraform_user"
  ec2_ami                        = "ami-06489866022e12a14"
  instance_type                  = "t2.micro"
  pem_file_key_name              = "cogkey-1"
  instance_role_profile_name     = "ec2_cognito_role_profile"
  subnet_name                    = "abc"
  pgp_key                        = "keybase:satyaprakash6670"


}
