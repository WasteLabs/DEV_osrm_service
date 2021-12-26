# == COMMON VARIABLES ==
variable region {
  type = string
  description = "Region of infrastructure deployment"
}

variable name {
  description = "Project Name"
  type = string
}

variable vpc_id {
  type = string
  description = "VPC ID OSRM services must be deployed"
}

variable vpc_cidr {
  type        = string
  description = "VPC CIDR OSRM services must be deployed"

}

variable ami {
  type        = string
  description = "AMI id image will be used as base for OSRM images"
}

variable ssh_key {
  type        = string
  default     = ""
  description = "ssh keys for access to aws in local development"
}

variable subnet_id {
  type        = string
  description = "Subnet ID module must be deployed"
}

variable subnet_cidr {
  type        = string
  description = "Subnet CIDR module must be deployed"
}

# ==OSRM Service configs==
variable pbf_files_to_instance_type {
  type = list(tuple([string, string]))
  description = "[url link to pbf, ec2 instance type]"
}

variable osrm_base_docker_image {
  type        = string
  default     = "wastelabs/osrm-base-image:0.1.0"
  description = "Docker base image used for deployment OSRM services"
}

variable osrm_graph_profile_url {
  type        = string
  default     = "https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"
  description = "environment variable of docker image - OSRM_GRAPH_PROFILE_URL"
}
