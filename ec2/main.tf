data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "veloce-1"
    workspaces = {
      name = "terraform-code-vpc"
    }
  }
}
data "terraform_remote_state" "security" {
  backend = "remote"
  config = {
    organization = "veloce-1"
    workspaces = {
      name = "terraform-code-security"
    }
  }
}
data "terraform_remote_state" "iam-role" {
  backend = "remote"
  config = {
    organization = "veloce-1"
    workspaces = {
      name = "terraform-code-iam-role"
    }
  }
}
module "ec2" {
  source  = "app.terraform.io/veloce-1/ec2/aws"
  version = "1.0.2"
  # insert required variables here

  vpc_name                         = var.vpc_name
  subnet_name                      = var.subnet_name
  ec2_ami_id                       = var.ec2_ami_id
  instance_type                    = var.instance_type
  ec2-server-name                  = var.ec2-server-name
  ec2-server-environment           = var.ec2-server-environment
  ec2-service-owner                = var.ec2-service-owner
  key_pair_name                    = var.key_pair_name
  region                           = var.region
  iam_instance_profile             = data.terraform_remote_state.iam-role.outputs.iam_instance_profile
  vpc                              = data.terraform_remote_state.vpc.outputs.aws_vpc_id
  public_subnet  = data.terraform_remote_state.vpc.outputs.aws_subnet_publicsubnets_01_id
  security_group = data.terraform_remote_state.security.outputs.aws_security_group_ssh_id
}
