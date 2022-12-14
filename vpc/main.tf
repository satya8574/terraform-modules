module "vpc" {
  source  = "app.terraform.io/veloce-1/vpc/aws"
  version = "1.0.1"
  # insert required variables here

  
  region = var.region
  main_vpc_cidr          = var.main_vpc_cidr
  public_subnets_01      = var.public_subnets_01
  private_subnets_01     = var.private_subnets_01
  public_subnets_02      = var.public_subnets_02
  private_subnets_02     = var.private_subnets_02
  zone2b                 = var.zone2b
  zone2c                 = var.zone2c
  vpc_name               = var.vpc_name
  creator_name           = var.creator_name
  environment_name       = var.environment_name
  managedby              = var.managedby
  igw_name               = var.igw_name
  pub_subnet_01_name     = var.pub_subnet_01_name
  pub_subnet_02_name     = var.pub_subnet_02_name
  private_subnet_01_name = var.private_subnet_01_name
  private_subnet_02_name = var.private_subnet_02_name
  nat_gateway            = var.nat_gateway
  pub_rt                 = var.pub_rt
  private_rt             = var.private_rt
}
