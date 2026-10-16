# Output values for the created resources
output "configured_region" {
  description = "AWS region selected for deployment"
  value       = var.aws_region
}

output "vpc_id" {
  description = "ID of created VPC"
  value       = module.networking.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = module.networking.vpc_cidr
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value = [
    module.networking.public_subnet_1_id,
    module.networking.public_subnet_2_id
  ]
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value = [
    module.networking.private_subnet_1_id,
    module.networking.private_subnet_2_id
  ]
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = module.networking.internet_gateway_id
}

output "public_route_table_id" {
  description = "Public route table ID"
  value       = module.networking.public_route_table_id
}

output "private_route_table_id" {
  description = "Private route table ID"
  value       = module.networking.private_route_table_id
}


# Output values for the security group
output "ec2_instance_id" {
  description = "Web server EC2 instance ID"
  value       = module.compute.instance_id
}

output "ec2_public_ip" {
  description = "Public IPv4 address of the web server"
  value       = module.compute.public_ip
}

output "website_url" {
  description = "URL of the Nginx website"
  value       = module.compute.website_url
}