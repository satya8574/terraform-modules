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
module "rds" {
  source  = "app.terraform.io/tmz-veloce-proj/rds/aws"
  version = "1.0.0"
  db_parameter_group_name = var.db_parameter_group_name
  db_subnet_group_name    = var.db_subnet_group_name 
  db_username             = var.db_username
  db_password             = var.db_password
  db_identifier           = var.db_identifier
  db_instance_name        = var.db_instance_name
  db_instance_class       = var.db_instance_class
  db_engine               = var.db_engine
  db_engine_version       = var.db_engine_version 
  db_allocated_storage    = var.db_allocated_storage
  creator_name            = var.creator_name
  environment_name        = var.environment_name
  managedby               = var.managedby
  region                  = var.region
  security_group_ids = [data.terraform_remote_state.security.outputs.aws_security_group_rds_id]
  subnets_ids = [data.terraform_remote_state.vpc.outputs.aws_subnet_privatesubnets_02_id, data.terraform_remote_state.vpc.outputs.aws_subnet_privatesubnets_01_id]
}
