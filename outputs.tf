# VPC:

# S3 bucket
output "s3_bucket_arn" {
  value       = aws_s3_bucket.mery_terraform_state.arn
  description = "The ARN of the S3 bucket"
}

output "subnet_security" {
  value       = aws_security_group.subnetsecurity.arn
  description = "The ARN of the Subnet security"
}

//# VPC cidr_block
//output "cidr_block" {
//  description = "VPC CIDR block"
//  value       = aws_vpc.cidr_block
//}
//
//output "vpc subnet1" {
//  description = "VPC Subnet 1"
//  value       = aws_vpc.subnet1
//}
//
//output "vpc_subnet2" {
//  description = "VPC Subnet2"
//  value       = aws_vpc.subnet2
//}



//# VPC
//output "vpc_id" {
//  description = "The ID of the VPC"
//  value       = module.vpc.vpc_id
//}
//
//# Subnets
//output "private_subnets" {
//  description = "List of IDs of private subnets"
//  value       = module.vpc.private_subnets
//}
//
//output "public_subnets" {
//  description = "List of IDs of public subnets"
//  value       = module.vpc.public_subnets
//}
//
//output "database_subnets" {
//  description = "List of IDs of database subnets"
//  value       = module.vpc.database_subnets
//}
//
//output "elasticache_subnets" {
//  description = "List of IDs of elasticache subnets"
//  value       = module.vpc.elasticache_subnets
//}
//
//output "redshift_subnets" {
//  description = "List of IDs of redshift subnets"
//  value       = module.vpc.redshift_subnets
//}
//
//output "intra_subnets" {
//  description = "List of IDs of intra subnets"
//  value       = module.vpc.intra_subnets
//}
//
//# NAT gateways
//output "nat_public_ips" {
//  description = "List of public Elastic IPs created for AWS NAT Gateway"
//  value       = module.vpc.nat_public_ips
//}
//
//# VPC endpoints
//output "vpc_endpoint_ssm_id" {
//  description = "The ID of VPC endpoint for SSM"
//  value       = module.vpc.vpc_endpoint_ssm_id
//}
//
//output "vpc_endpoint_ssm_network_interface_ids" {
//  description = "One or more network interfaces for the VPC Endpoint for SSM."
//  value       = module.vpc.vpc_endpoint_ssm_network_interface_ids
//}
//
//output "vpc_endpoint_ssm_dns_entry" {
//  description = "The DNS entries for the VPC Endpoint for SSM."
//  value       = module.vpc.vpc_endpoint_ssm_dns_entry
//}

//
//# VPC endpoints
//output "vpc_endpoint_ec2_id" {
//  description = "The ID of VPC endpoint for EC2"
//  value       = "${module.vpc.vpc_endpoint_ec2_id}"
//}
//
//output "vpc_endpoint_ec2_network_interface_ids" {
//  description = "One or more network interfaces for the VPC Endpoint for EC2."
//  value = ["${module.vpc.vpc_endpoint_ec2_network_interface_ids}"]
//}
//
//output "vpc_endpoint_ec2_dns_entry" {
//  description = "The DNS entries for the VPC Endpoint for EC2."
//  value = ["${module.vpc.vpc_endpoint_ec2_dns_entry}"]
//}
