data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "tmz-veloce-proj"
    workspaces = {
      name = "veloce-terraform-vpc"
    }
  }
}
module "security" {
  source  = "app.terraform.io/tmz-veloce-proj/security/aws"
  version = "1.0.0"
  region                  = var.region
  security_group_ssh_port = var.security_group_ssh_port
  security_group_rds_port = var.security_group_rds_port
  creator_name            = var.creator_name
  environment_name        = var.environment_name 
  managedby               = var.managedby
  vpc_name                = data.terraform_remote_state.vpc.outputs.aws_vpc_id
}
