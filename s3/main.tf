module "s3" {
  source  = "app.terraform.io/tmz-veloce-proj/s3/aws"
  version = "1.0.0"
  s3-bucket-name   = var.s3-bucket-name
  creator_name     = var.creator_name
  environment_name = var.environment_name
  managedby        = var.managedby
  region           = var.region
}
