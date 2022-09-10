data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "tmz-veloce-proj"
    workspaces = {
      name = "veloce-terraform-vpc"
    }
  }
}
data "terraform_remote_state" "security" {
  backend = "remote"
  config = {
    organization = "tmz-veloce-proj"
    workspaces = {
      name = "veloce-terraform-security"
    }
  }
}
module "ec2" {
  source  = "app.terraform.io/tmz-veloce-proj/ec2/aws"
  version = "1.0.0"
  vpc_name = var.vpc_name
  subnet_name                      = var.subnet_name
  ec2_ami_id                       = var.ec2_ami_id
  instance_type                    = var.instance_type
  ec2-server-name                  = var.ec2-server-name
  ec2-server-environment           = var.ec2-server-environment
  ec2-service-owner                = var.ec2-service-owner
  key_pair_name                    = var.key_pair_name
  region                           = var.region
  vpc                              = data.terraform_remote_state.vpc.outputs.aws_vpc_id
  public_subnet  = data.terraform_remote_state.vpc.outputs.aws_subnet_publicsubnets_01_id
  security_group = data.terraform_remote_state.security.outputs.aws_security_group_ssh_id
}
