module "cognito" {
  source  = "app.terraform.io/tmz-demo/cognito/aws"
  version = "1.0.0"
  domain_name                          = "argos-app-pool2-dev"
  pool_user_name                       = "argos-app-user2-dev"
  password_lentgth                     = 6
  require_uppercase                    = true
  require_lowercase                    = true
  password_require_numbers             = true
  password_require_symbols             = true
  cognito_tag_name                     = "argos-aap-dev"
  infra_managed_by                     = "Teraform"
  environment_types                    = "develop"                # "tags for Environment (DEV,QA,UAT,PROD)
  project_name                         = "veloce"                 # "tags for project name"
  clinet_name                          = "argos-app-client-dev"    #description = "cognito client name"
  callback_urls                        = "https://www.google.com" #description = "callback_urls"
  logout_urls                          = "https://www.google.com"
  allowed_oauth_flows_user_pool_client = true
  schema_attribute_emial_required      = true
  region                               = "us-east-2"
}
