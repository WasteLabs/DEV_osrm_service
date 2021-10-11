# == COMMON VARIABLES ==
variable region {
  type = string
}

variable name {
  description = "Name of project"
  type = string
}

variable vpc_id {
  type = string
}

variable vpc_cidr {
  type        = string
  description = "VPC cidr"
}

variable ami {
  type        = string
  description = "AMI id image will be used for master & workers"
}

variable ssh_key {
  type        = string
  default     = ""
  description = "ssh keys for access to aws"
}

variable subnet_id {
  type        = string
  description = "Subnet ID"
}

variable subnet_cidr {
  type        = string
  description = "Subnet CIDR"
}

# ==OSRM Service configs==
variable pbf_files_to_instance_type {
  type = list(tuple([string, string]))
  description = "Mapping URL of pbf -> instance_type"
}

variable osrm_base_docker_image {
  type        = string
  default     = "wastelabs/osrm-base-image:0.1.0"
  description = "Docker base image used for deployment"
}

variable osrm_graph_profile_url {
  type        = string
  default     = "https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"
  description = "environment variable of docker image - OSRM_GRAPH_PROFILE_URL"
}
