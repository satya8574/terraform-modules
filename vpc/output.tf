output "aws_vpc_id" {
  value = module.vpc.aws_vpc_id
}
output "aws_internet_gateway_id" {
  value = module.vpc.aws_internet_gateway_id
}
output "aws_subnet_publicsubnets_01_id" {
  value = module.vpc.aws_subnet_publicsubnets_01_id
}
output "aws_subnet_publicsubnets_02_id" {
  value = module.vpc.aws_subnet_publicsubnets_02_id
}
output "aws_subnet_privatesubnets_01_id" {
  value = module.vpc.aws_subnet_privatesubnets_01_id
}
output "aws_subnet_privatesubnets_02_id" {
  value = module.vpc.aws_subnet_privatesubnets_02_id
}
output "aws_eip_id" {
  value = module.vpc.aws_eip_id
}
output "aws_nat_gateway_NATgw_id" {
  value = module.vpc.aws_nat_gateway_NATgw_id
}
output "aws_route_table_PrivateRT_id" {
  value = module.vpc.aws_route_table_PrivateRT_id
}
output "aws_route_table_PublicRT_id" {
  value = module.vpc.aws_route_table_PublicRT_id
}
