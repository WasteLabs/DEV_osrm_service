output project_name {
  description = "Project name for unique referencing"
  value = var.tags.project_name
}

output region {
  description = "region"
  value = var.tags.region
}

output osrm_subnets {
  value       = module.vpc.public_subnets
  description = "osrm subnet CIDR-s"
}

output osrm_cidr {
  value       = module.vpc.public_subnets_cidr_blocks
  description = "osrm subnet CIDR-s"
}

output vpc_cidr {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR blocks"
}

output vpc_id {
  value       = module.vpc.vpc_id
  description = "VPC id"
}

