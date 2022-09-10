output "user_pool" {
  value  = module.cognito.user_pool
}
output "client_ids" {
  value = module.cognito.client_ids
}
output "user_pool_domain" {
  value = module.cognito.user_pool_domain
}
