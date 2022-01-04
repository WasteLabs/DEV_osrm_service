# == COMMON PARAMETERS ==
variable "tags" {
  default     = {
    project_name = "DEV_OSRM_SERVICE"
    region = "us-east-1"
  }
  description = "Tags set to VPC"
  type        = map(string)
}


variable ami {
  description = "AMI image used as baseline"
  type = string
  default = "ami-0a2c8ea16986f7bd8"
}

variable ssh_key {
  type        = string
  default     = "aws-us-east-1"
  description = "ssh key for access to servers"
}

# == OSRM NODES PARAMETERS ==
variable pbf_files_to_instance_type {
  type = list(tuple([string, string]))
  default = [
      # ["https://download.openstreetmap.fr/extracts/asia/singapore.osm.pbf",  "t2.micro"],
      ["https://download.openstreetmap.fr/extracts/oceania/australia/new_south_wales-latest.osm.pbf",  "c5.large"],
      ["https://download.openstreetmap.fr/extracts/asia/china/hong_kong-latest.osm.pbf", "c5.large"],
  ]
}

variable osrm_base_docker_image {
  type        = string
  default     = "public.ecr.aws/u6u7x5n5/dev_osrm_service:1.0.0"
  description = "Docker base image used for deployment"
}

variable osrm_graph_profile_url {
  type        = string
  default     = "https://raw.githubusercontent.com/WasteLabs/osrm_profiles/master/truck_v1.lua"
  description = "environment variable of docker image - OSRM_GRAPH_PROFILE_URL"
}
