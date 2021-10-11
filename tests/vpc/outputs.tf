output name {
  description = "Project name for unique referencing"
  value = var.name
}

output region {
  description = "region"
  value = var.region
}

output allocated_aws_eip_id {
  description = "IP address ID for bastion / master"
  value = aws_eip.master_ip.id
}

output allocated_public_ip {
  description = "IP address for bastion / master"
  value = aws_eip.master_ip.public_ip
}

output public_subnets {
  value       = module.vpc.public_subnets
  description = "public subnet CIDR-s"
}

output public_cidr {
  value       = module.vpc.public_subnets_cidr_blocks
  description = "public subnet CIDR-s"
}

output vpc_cidr {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR blocks"
}

output vpc_id {
  value       = module.vpc.vpc_id
  description = "VPC id"
}

