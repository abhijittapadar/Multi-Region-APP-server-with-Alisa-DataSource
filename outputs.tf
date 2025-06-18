output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.sg-public.security_group_id
}
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "vpc1_id" {
  description = "The ID of the VPC"
  value       = module.vpc1.vpc_id
}
output "vcp1_public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc1.public_subnets
}
output "security1_group_id" {
  description = "The ID of the security group"
  value       = module.sg1-public.security_group_id
}